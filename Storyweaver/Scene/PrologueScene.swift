//
//  PrologueScene.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/26/23.
//

import Foundation
import SpriteKit

class PrologueScene: SKScene {
    
    private var textNode: SKLabelNode = SKLabelNode()
    private var scrollingSpeed: CGFloat = 50
    
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        AudioManager.shared.playBackgroundMusic(fileName: "prologue")
        
        textNode = SKLabelNode(fontNamed: "Aleo-Bold")
        textNode.lineBreakMode = .byWordWrapping
        textNode.numberOfLines = 32
        textNode.preferredMaxLayoutWidth = size.width * 2/3
        textNode.text = "What if…\n\nThere’s no boundary between reality and fantasy?\n\nIn a mythical world realm where folklore comes alive, a mystical being with an ethereal presence and boundless imagination possessed the ability to traverse the boundaries of folklores and legends.\n\nWith eyes gleaming for adventure and unwavering desire to craft magic inside every tales, they breathes another destiny into the worlds he touched.\n\nThey are the guide of fantasy…\n\nThey are the catalyst of imagination…\n\nThey are the guardian of infinite possibilities…\n\nThey are… The Storyweaver"
        textNode.fontSize = 32
        textNode.position = CGPoint(x: size.width / 2, y: -textNode.frame.height)
        addChild(textNode)
        
        // Set up the scrolling action
        let scrollDistance = size.height  + textNode.frame.height
        let scrollDuration = scrollDistance / scrollingSpeed
        let moveAction = SKAction.moveBy(x: 0, y: +scrollDistance, duration: TimeInterval(scrollDuration))
        
        // Add the scrolling action to the text node
        textNode.run(moveAction) {
            // The scrolling has finished, transition to the next scene or perform other actions
            print("Move Animation Finished")
            let gameScene = ActTitleScene(fileNamed: "ActTitleScene")
            //            gameScene!.scaleMode = .aspectFill
            let transition = SKTransition.crossFade(withDuration: 1.0)
            
            gameScene!.actNumber = 1
            gameScene!.actTitle = "The Birth of Legend"
            
            view.presentScene(gameScene!, transition: transition)
        }
    }

    
    override func update(_ currentTime: TimeInterval) {
        // Add any additional updates or logic here if needed
    }
}

