//
//  ToBeContinueScene.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/28/23.
//

import Foundation
import SpriteKit

class ToBeContinueScene: SKScene {
    
    private var backgroundNode: SKSpriteNode = SKSpriteNode(imageNamed: "tobecontinue")
    private var tobecontinueText: SKLabelNode = SKLabelNode(text: "To be continue...")
    
    override func didMove(to view: SKView) {
        backgroundNode.position = CGPoint(x: size.width/2, y: size.height/2)
        backgroundNode.scale(to: size)
        addChild(backgroundNode)
        
        tobecontinueText.position = CGPoint(x: size.width/2, y: size.height/2)
        tobecontinueText.fontSize = 48
        tobecontinueText.fontName = "Baskerville SemiBold"
        addChild(tobecontinueText)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = Homepage(size: size)
        gameScene.scaleMode = .aspectFill
        let transition = SKTransition.crossFade(withDuration: 1.0)
        view?.presentScene(gameScene, transition: transition)
        return
    }
}
