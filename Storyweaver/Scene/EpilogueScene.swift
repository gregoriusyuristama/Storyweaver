//
//  EpilogueScene.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/30/23.
//

import Foundation
import SpriteKit
import SwiftUI

class EpilogueScene: SKScene {
    
    var currentIndex: Int = 0
    var dialogueLabel: SKLabelNode = SKLabelNode()
    var buttons: [SKShapeNode] = []
    
    var isButtonVisible: Bool = false
    
    @ObservedObject private var gameState = GameState(dialogTree: DialogTree.DialogTreeEpilogue)
    
    override init(){
        super.init()
        //        setupEntities()
    }
    
    override init(size: CGSize){
        super.init(size: size)
        //        setupEntities()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        dialogueLabel = SKLabelNode(fontNamed: "Aleo-Regular")
        dialogueLabel.fontSize = 32
        dialogueLabel.fontColor = SKColor.white // Set text color to black
        dialogueLabel.horizontalAlignmentMode = .center
        dialogueLabel.verticalAlignmentMode = .top
        dialogueLabel.position = CGPoint(x: size.width/2, y: size.height/2)
        dialogueLabel.lineBreakMode = .byWordWrapping
        dialogueLabel.preferredMaxLayoutWidth = size.width * 2/3
        dialogueLabel.numberOfLines = 5
        dialogueLabel.zPosition = 2
        
        addChild(dialogueLabel)
        
        createButtons()
        showNextDialogue()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in: self)
            
            // Check if any of the buttons were tapped
            if isButtonVisible{
                for button in buttons {
                    if button.contains(location) {
                        handleButtonTap(button)
                        return
                    }
                }
            }
            
            if currentIndex >= (gameState.currentDialog?.text.count)! {
                if gameState.currentDialog?.id == gameState.dialogTree.count - 1 {
                    let gameScene = Homepage(size: size)
                    gameScene.scaleMode = .aspectFill
                    let transition = SKTransition.crossFade(withDuration: 1.0)
                    view?.presentScene(gameScene, transition: transition)
                    return
                } else {
                    if gameState.currentDialog?.nextDialogIDs.count == 1 {
                        gameState.selectDecision(gameState.decisions.first(where: {$0.dialogID == (gameState.currentDialog!.nextDialogIDs[0])})!)
                        dialogueLabel.text = gameState.currentDialog?.text
                        createButtons()
                        showNextDialogue()
                        return
                        
                    } else {
                        showButtons()
                    }
                }
                
                
            }
            
            // Handle touches on the screen here
            // ...
            if currentIndex < (gameState.currentDialog?.text.count)! {
                // Skip to the end of the current dialogue
                dialogueLabel.text = gameState.currentDialog?.text
                dialogueLabel.removeAllActions()
                currentIndex = (gameState.currentDialog?.text.count)!
            }
        }
        
        
    }
    
    func showNextDialogue() {
        let currentDialogueText = (gameState.currentDialog?.text)!
        dialogueLabel.alpha = 1
        dialogueLabel.text = ""
        currentIndex = 0
        animateTextDisplay(dialogueText: currentDialogueText)
    }
    
    func createButtons() {
        let buttonSize = CGSize(width: 800, height: 69)
        let buttonSpacing: CGFloat = 20
        let totalButtonHeight = CGFloat(gameState.decisions.count) * (buttonSize.height + buttonSpacing)
        let buttonsYPosition = size.height/2 - totalButtonHeight / 2
        
        // Remove previously created buttons
        buttons.forEach { $0.removeFromParent() }
        buttons.removeAll()
        
        for index in 0..<gameState.decisions.count {
            let buttonNode = SKShapeNode(rectOf: buttonSize)
            buttonNode.fillColor = SKColor.white
            buttonNode.strokeColor = SKColor.black
            
            buttonNode.position = CGPoint(x: size.width/2, y: buttonsYPosition + CGFloat(index) * (buttonSize.height + buttonSpacing))
            //            buttonNode.name = "\(nextDialogIDs[index])"
            buttonNode.alpha = 0.0
            isButtonVisible = false
            addChild(buttonNode)
            
            let buttonLabel = SKLabelNode(text: gameState.decisions[index].text)
            buttonLabel.name = "\(gameState.decisions[index].dialogID)"
            buttonLabel.fontName = "Aleo-Regular"
            buttonLabel.fontSize = 24
            buttonLabel.fontColor = SKColor.black
            buttonLabel.horizontalAlignmentMode = .center
            buttonLabel.verticalAlignmentMode = .center
            buttonLabel.position = CGPoint(x: 0, y: -5) // Adjust label position if needed
            buttonLabel.zPosition = 2
            buttonNode.addChild(buttonLabel)
            
            buttons.append(buttonNode)
        }
    }
    
    func handleButtonTap(_ button: SKShapeNode) {
        // Handle button tap here
        if let buttonLabel = button.children.first as? SKLabelNode {
            //            buttonLabel.name
            //            let buttonText = buttonLabel.text
            print("Button tapped: \(buttonLabel.name ?? "")")
            
            if let dialogIDCast = Int(buttonLabel.name!){
                gameState.selectDecision(gameState.decisions.first(where: {$0.dialogID == dialogIDCast})!)
                dialogueLabel.text = gameState.currentDialog?.text
                createButtons()
                showNextDialogue()
            }
        }
    }
    
    func animateTextDisplay(dialogueText: String) {
        if currentIndex < dialogueText.count {
            let index = dialogueText.index(dialogueText.startIndex, offsetBy: currentIndex)
            let nextCharacter = String(dialogueText[index])
            dialogueLabel.text = (dialogueLabel.text ?? "") + nextCharacter
            currentIndex += 1
            
            let delayAction = SKAction.wait(forDuration: GameConfig.typingSpeed)
            let nextCharacterAction = SKAction.run { [weak self] in
                self?.animateTextDisplay(dialogueText: dialogueText)
            }
            let sequence = SKAction.sequence([delayAction, nextCharacterAction])
            dialogueLabel.run(sequence)
            for button in buttons {
                button.alpha = 0.0
            }
            isButtonVisible = false
        } else {
            // Text display completed, wait for user interaction
            
        }
    }
    
    func showButtons() {
        for button in buttons {
            button.alpha = 1
        }
        isButtonVisible = true
        
        dialogueLabel.alpha = 0
    }
}


