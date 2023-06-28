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
    private var continueButton: SKLabelNode = SKLabelNode(text: "Start you journey")
    
    
    override func didMove(to view: SKView) {
        AudioManager.shared.playBackgroundMusic(fileName: "prologue")
        backgroundNode.scale(to: size)
        backgroundNode.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(backgroundNode)
        
        // Create a font with SF Symbols
        
//        continueButton.attributedText = attributtedString
        
//        circleText.color = SKColor.white
//        circleText.fontSize = 12
        
        continueButton.color = SKColor.white
        continueButton.fontName = "Baskervville-Regular"
        continueButton.fontSize = 32
        continueButton.position = CGPoint(x: size.width - continueButton.frame.width/2 - (size.width * 0.05) , y: size.height - continueButton.frame.height - (size.height * 0.3))
        addChild(continueButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = PrologueScene(size: size)
        gameScene.scaleMode = .aspectFill
        
        let transition = SKTransition.crossFade(withDuration: 1.0)
        view?.presentScene(gameScene, transition: transition)
    }
}
