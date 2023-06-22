//
//  FirstPersonScene.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/21/23.
//

import SpriteKit
import SwiftUI

class FirstPersonScene: SKScene {
    var typingSpeed: TimeInterval = 0.1 // Adjust the speed of text display here
    
    var currentIndex: Int = 0
    var currentAlpha: Double = 0.0
    
    var dialogueLabel: SKLabelNode!
    var continueLabel: SKLabelNode!
    var mbokSrini: SKSpriteNode!
    var dialogueBackground: SKShapeNode!
    
    
    @ObservedObject private var gameState = GameState(dialogTree: DialogTree.sceneTwoDialogues)
    
    
    override func didMove(to view: SKView) {
        dialogueLabel = childNode(withName: "dialogueLabel") as? SKLabelNode
        dialogueLabel.lineBreakMode = .byWordWrapping
        dialogueLabel.preferredMaxLayoutWidth = size.width
        dialogueLabel.numberOfLines = 5
        dialogueLabel.text = ""
        
        continueLabel = childNode(withName: "continueLabel") as? SKLabelNode
        continueLabel.alpha = 0
        
        mbokSrini = childNode(withName: "mbokSrini") as? SKSpriteNode
        mbokSrini.alpha = 0
        fadeInMbokSrini()
        let delayAction = SKAction.wait(forDuration: 2.0) // 2 seconds delay
        let nextAction = SKAction.run {
            self.showNextDialogue()
        }
        let sequenceAction = SKAction.sequence([delayAction, nextAction])
        run(sequenceAction)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Check if any of the buttons were tapped
        
        // Handle touches on the screen here
        // ...
        if currentIndex < (gameState.currentDialog?.text.count)! {
            // Skip to the end of the current dialogue
            dialogueLabel.text = gameState.currentDialog?.text
            dialogueLabel.removeAllActions()
            currentIndex = (gameState.currentDialog?.text.count)!
            continueLabel.alpha = 1
        } else if gameState.currentDialog?.id == 1 {
            let gameScene = GameScene(size: size)
            let transition = SKTransition.crossFade(withDuration: 1.0)
            view?.presentScene(gameScene, transition: transition)
        } else if currentIndex >= (gameState.currentDialog?.text.count)! {
            if gameState.currentDialog!.id < 1{
                gameState.selectDecision(gameState.decisions.first(where: {$0.dialogID == gameState.currentDialog!.id + 1})!)
                dialogueLabel.text = gameState.currentDialog?.text
                showNextDialogue()
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
    
    func fadeInMbokSrini() {
        if currentAlpha <= 1 {
            mbokSrini.alpha += 0.1
            let delayAction = SKAction.wait(forDuration: typingSpeed)
            let nextAction = SKAction.run { [weak self] in
                self?.fadeInMbokSrini()
            }
            let sequence = SKAction.sequence([delayAction, nextAction])
            mbokSrini.run(sequence)
        }
    }
    
    func animateTextDisplay(dialogueText: String) {
        if currentIndex < dialogueText.count {
            continueLabel.alpha = 0
            let index = dialogueText.index(dialogueText.startIndex, offsetBy: currentIndex)
            let nextCharacter = String(dialogueText[index])
            dialogueLabel.text = (dialogueLabel.text ?? "") + nextCharacter
            currentIndex += 1
            
            let delayAction = SKAction.wait(forDuration: typingSpeed)
            let nextCharacterAction = SKAction.run { [weak self] in
                self?.animateTextDisplay(dialogueText: dialogueText)
            }
            let sequence = SKAction.sequence([delayAction, nextCharacterAction])
            dialogueLabel.run(sequence)
        } else {
            // Text display completed, wait for user interaction
            continueLabel.alpha = 1
        }
    }
}
