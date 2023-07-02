//
//  Homepage.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/28/23.
//

import Foundation
import SpriteKit

class Homepage: SKScene{
    
    private var backgroundNode: SKSpriteNode = SKSpriteNode(imageNamed: "Homepage")
    private var continueButton: SKLabelNode = SKLabelNode(text: "Start your journey")
    
    
    private var underlinedLabel = UnderlinedLabelNode(fontNamed: "Baskervville-Regular")
    
    private var creditsNode: SKSpriteNode = SKSpriteNode(imageNamed: "Credits")
    
    private var closeCredit: SKSpriteNode = SKSpriteNode()
    
    private var isCreditsVisible: Bool = false
    
    override func didMove(to view: SKView) {
        AudioManager.shared.playBackgroundMusic(fileName: "prologue")
        ChoresPuzzleHelper.completedTask.removeAll()
        backgroundNode.scale(to: size)
        backgroundNode.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(backgroundNode)
        
        continueButton.color = SKColor.white
        continueButton.fontName = "Baskervville-Regular"
        continueButton.fontSize = 32
        continueButton.position = CGPoint(x: size.width - continueButton.frame.width/2 - (size.width * 0.05) , y: (size.height * 0.15))
        
        addChild(continueButton)
        
        underlinedLabel.text = "Credits"
        underlinedLabel.fontColor = SKColor.white
        underlinedLabel.fontSize = 24
        underlinedLabel.underlineColor = SKColor.white
        underlinedLabel.position = CGPoint(x: size.width * 0.06, y: size.height * 0.045)
        self.addChild(underlinedLabel)
        
        creditsNode.scale(to: self.size)
        creditsNode.position = CGPoint(x: size.width/2, y: size.height/2)
        creditsNode.zPosition = -1
        self.addChild(creditsNode)
        
//        closeCredit.position = CGPoint(x: size.width/2, y: size.height/2)
//
//
//        //        closeCredit.zPosition = -1
//        self.addChild(closeCredit)
        
        let image = UIImage(systemName: "xmark")!.withTintColor(.white)

        let data = image.pngData()
        let newImage = UIImage(data:data!)
        let texture = SKTexture(image: newImage!)
        let sprite = SKSpriteNode(texture: texture,size: CGSize(width: 38, height: 33))
        sprite.position = CGPoint(x: size.width - sprite.frame.width, y: size.height - sprite.frame.height)
        sprite.zPosition = -1
        closeCredit = sprite
        addChild(closeCredit)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self)
            if continueButton.contains(location) && !isCreditsVisible{
                let gameScene = PrologueScene(size: size)
                gameScene.scaleMode = .aspectFill
                
                let transition = SKTransition.crossFade(withDuration: 1.0)
                view?.presentScene(gameScene, transition: transition)
            }
            if underlinedLabel.contains(location){
                isCreditsVisible = true
                creditsNode.zPosition = 1
                closeCredit.zPosition = 1
            }
            if closeCredit.contains(location){
                isCreditsVisible = false
                creditsNode.zPosition = -1
                closeCredit.zPosition = -1
                
            }
        }
        
    }
}
