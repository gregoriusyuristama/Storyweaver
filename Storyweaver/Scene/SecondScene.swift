//
//  FirstPersonScene.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/21/23.
//

import SpriteKit
import SwiftUI

class SecondScene: SKScene {
    var typingSpeed: TimeInterval = 0.1 // Adjust the speed of text display here
    
    var currentIndex: Int = 0
    var currentAlpha: Double = 0.0
    
    var dialogueLabel: SKLabelNode?
    var continueLabel: SKLabelNode?
    var mbokSrini: SKSpriteNode?
    var dialogueBackground: SKShapeNode?
    
    
    var gameState: GameState = GameState(dialogTree: DialogTree.DialogTreeScene2)
    
    
    override func didChangeSize(_ oldSize: CGSize) {
        super.didChangeSize(oldSize)
        
        super.didChangeSize(oldSize)
        
        // Adjust the scale and position of the dialogue background
        dialogueBackground?.position = CGPoint(x: size.width/2, y: size.height/2)
        dialogueBackground?.xScale = size.width / oldSize.width
        dialogueBackground?.yScale = size.height / oldSize.height
        
        
        mbokSrini?.xScale = size.width / oldSize.width
        mbokSrini?.yScale = size.height / oldSize.height
        
        
    }
    override func didMove(to view: SKView) {
        setupScene()
        self.showNextDialogue()
        
    }
    
    func setupScene() {
        
        if let backgroundNode = childNode(withName: "dialogueBackground") as? SKShapeNode {
            dialogueBackground = backgroundNode
            dialogueBackground?.lineWidth = 0
        } else {
            print("Error: dialogueBackground node not found.")
        }
        
        if let dialogueLabelNode = childNode(withName: "dialogueLabel") as? SKLabelNode {
            dialogueLabel = dialogueLabelNode
            dialogueLabel?.lineBreakMode = .byWordWrapping
            dialogueLabel?.numberOfLines = 5
            dialogueLabel?.text = ""
            dialogueLabel?.preferredMaxLayoutWidth = (dialogueBackground?.frame.width)! - size.width * 0.05
        }
        
        
        mbokSrini = childNode(withName: "mbokSrini") as? SKSpriteNode
        mbokSrini?.alpha = 0
        
        continueLabel = childNode(withName: "continueLabel") as? SKLabelNode
        continueLabel?.alpha = 0
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Check if any of the buttons were tapped
        
        // Handle touches on the screen here
        // ...
        if currentIndex < (gameState.currentDialog?.text.count)! {
            // Skip to the end of the current dialogue
            dialogueLabel?.text = gameState.currentDialog?.text
            dialogueLabel?.removeAllActions()
            currentIndex = (gameState.currentDialog?.text.count)!
            continueLabel?.alpha = 1
        } else if gameState.currentDialog?.id == gameState.dialogTree.count - 1 {
            let gameScene = ThirdScene(size: size)
            gameScene.scaleMode = .aspectFill
            let transition = SKTransition.crossFade(withDuration: 1.0)
            view?.presentScene(gameScene, transition: transition)
        } else if currentIndex >= (gameState.currentDialog?.text.count)! {
            if gameState.currentDialog!.nextDialogIDs.count == 1{
                gameState.selectDecision(gameState.decisions.first(where: {$0.dialogID == gameState.currentDialog!.id + 1})!)
                dialogueLabel?.text = gameState.currentDialog?.text
                showNextDialogue()
            }
        }
        
    }
    
    func showNextDialogue() {
        if gameState.currentDialog?.id == 1 {
            fadeInMbokSrini()
        }
        
        if gameState.currentDialog?.id == 5 {
            AudioManager.shared.playSoundEffect(fileName: "scene2_audio1_babyCrying")
        }
        
        if gameState.currentDialog?.id == 8 {
            AudioManager.shared.playBackgroundMusic(fileName: "scene2and3")
        }
        
        let currentDialogueText = (gameState.currentDialog?.text)!
        dialogueLabel?.alpha = 1
        dialogueLabel?.text = ""
        currentIndex = 0
        animateTextDisplay(dialogueText: currentDialogueText)
    }
    
    func fadeInMbokSrini() {
        if currentAlpha <= 1 {
            mbokSrini?.alpha += 0.1
            let delayAction = SKAction.wait(forDuration: typingSpeed)
            let nextAction = SKAction.run { [weak self] in
                self?.fadeInMbokSrini()
            }
            let sequence = SKAction.sequence([delayAction, nextAction])
            mbokSrini?.run(sequence)
        }
    }
    
    func animateTextDisplay(dialogueText: String) {
        if currentIndex < dialogueText.count {
            continueLabel?.alpha = 0
            let index = dialogueText.index(dialogueText.startIndex, offsetBy: currentIndex)
            let nextCharacter = String(dialogueText[index])
            dialogueLabel?.text = (dialogueLabel?.text ?? "") + nextCharacter
            currentIndex += 1
            
            let delayAction = SKAction.wait(forDuration: typingSpeed)
            let nextCharacterAction = SKAction.run { [weak self] in
                self?.animateTextDisplay(dialogueText: dialogueText)
            }
            let sequence = SKAction.sequence([delayAction, nextCharacterAction])
            dialogueLabel?.run(sequence)
        } else {
            // Text display completed, wait for user interaction
            continueLabel?.alpha = 1
        }
    }
}


