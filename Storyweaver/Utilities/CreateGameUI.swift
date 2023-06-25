//
//  CreateGameUI.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/25/23.
//

import Foundation
import SpriteKit

class CreateGameUI {
    init () {}
    
    static func createButtons(scene: ThirdScene, gameState: GameState) {
            let buttonSize = CGSize(width: 300, height: 50)
            let buttonSpacing: CGFloat = 20
            let totalButtonHeight = CGFloat(gameState.decisions.count) * (buttonSize.height + buttonSpacing)
            let buttonsYPosition = scene.size.height/2 - totalButtonHeight / 2
            
            // Remove previously created buttons
            scene.buttons.forEach { $0.removeFromParent() }
            scene.buttons.removeAll()
            
            for index in 0..<gameState.decisions.count {
                let buttonLabel = SKLabelNode(text: gameState.decisions[index].text)
                buttonLabel.name = "\(gameState.decisions[index].dialogID)"
                buttonLabel.fontName = "Aleo-Regular"
                buttonLabel.fontSize = 24
                buttonLabel.fontColor = SKColor.black
                buttonLabel.horizontalAlignmentMode = .center
                buttonLabel.verticalAlignmentMode = .center
                buttonLabel.position = CGPoint(x: 0, y: -5) // Adjust label position if needed
                
                let buttonSize = CGSize(width: buttonLabel.frame.width + 20, height: 50) // Adjust the padding as needed
                
                let buttonNode = SKShapeNode(rectOf: buttonSize)
                buttonNode.fillColor = SKColor.white
                buttonNode.strokeColor = SKColor.black
                buttonNode.position = CGPoint(x: scene.size.width/2, y: buttonsYPosition + CGFloat(index) * (buttonSize.height + buttonSpacing))
                buttonNode.alpha = 0.0
                scene.isButtonVisible = false
                scene.addChild(buttonNode)
                
                buttonLabel.zPosition = 3
                buttonNode.addChild(buttonLabel)
                
                scene.buttons.append(buttonNode)
            }
        }
}
