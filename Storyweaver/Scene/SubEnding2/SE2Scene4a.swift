//
//  SE2Scene44a.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/30/23.
//

import Foundation

import SpriteKit
import GameplayKit
import SwiftUI

class SE2Scene4a: SKScene {
    var dialogueLabel: SKLabelNode = SKLabelNode()
    var characterLabel: SKLabelNode = SKLabelNode()
    var continueLabel: SKLabelNode = SKLabelNode()
    
    var characterImage: SKSpriteNode = SKSpriteNode()
    var giantImage: SKSpriteNode = SKSpriteNode()
    var backgroundNode: SKSpriteNode = SKSpriteNode()
    var dialogueBackground: SKShapeNode = SKShapeNode()
    var characterLabelBackground: SKSpriteNode = SKSpriteNode()
    var cutsceneNode: SKSpriteNode = SKSpriteNode()
    
    
    var currentIndex: Int = 0
    var isButtonVisible: Bool = false
    
    var characters: [GKEntity] = []
    var buttons: [SKShapeNode] = []

    let characterVisualComponentSytem = GKComponentSystem(componentClass: CharacterVisualComponent.self)
    
    
    @ObservedObject private var gameState = GameState(dialogTree: DialogTree.DialogTreeSE2Scene4a)
    
    override init(){
        super.init()
        setupEntities()
        setupSystemComponents()
    }
    
    override init(size: CGSize){
        super.init(size: size)
        setupEntities()
        setupSystemComponents()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        //        backgroundColor = .brown
        backgroundNode = SKSpriteNode(imageNamed: "background_wood")
        backgroundNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        backgroundNode.scale(to: CGSize(width: size.width, height: size.height))
        backgroundNode.zPosition = -5  // Ensure the background is behind other nodes
        addChild(backgroundNode)
        
        dialogueBackground = SKShapeNode(rectOf: CGSize(width: size.width - (size.width * 0.1), height: size.height/3 - (size.height*0.1))) // Customize the size of the rectangle
        dialogueBackground.fillColor = AppColor.blackColor ?? .black // Customize the background color
        dialogueBackground.strokeColor = SKColor.white // Hide the border of the rectangle
        dialogueBackground.lineWidth = 2
        dialogueBackground.position = CGPoint(x: size.width/2, y: dialogueBackground.frame.height/3 + (size.height*0.1))
        dialogueBackground.zPosition = 2
        addChild(dialogueBackground)
        
        characterLabel = SKLabelNode(fontNamed: "Aleo-Regular")
        characterLabel.fontSize = 32
        characterLabel.fontColor = SKColor.white
        characterLabel.horizontalAlignmentMode = .left
        characterLabel.verticalAlignmentMode = .top
        characterLabel.zPosition = 3
        
        characterLabelBackground = SKSpriteNode(imageNamed: "CharacterLabel")
        characterLabelBackground.scale(to: CGSize(width: 225, height: 51))
        characterLabelBackground.position = CGPoint(x: dialogueBackground.frame.minX + characterLabelBackground.frame.width/2, y: dialogueBackground.frame.maxY)
        characterLabelBackground.zPosition = 2
        addChild(characterLabelBackground)
        
        characterLabel.position = CGPoint(x: characterLabelBackground.position.x - characterLabelBackground.frame.width/2 + 25, y: characterLabelBackground.position.y + 15)
        
        addChild(characterLabel)
        //        addChild(characterLabel)
        
        dialogueLabel = SKLabelNode(fontNamed: "Aleo-Regular")
        dialogueLabel.fontSize = 24
        dialogueLabel.fontColor = SKColor.white // Set text color to black
        dialogueLabel.horizontalAlignmentMode = .center // Align text to the left
        dialogueLabel.verticalAlignmentMode = .top
        dialogueLabel.position = CGPoint(x: size.width/2, y: characterLabel.position.y - 70)
        dialogueLabel.lineBreakMode = .byWordWrapping
        dialogueLabel.preferredMaxLayoutWidth = dialogueBackground.frame.width - size.width * 0.05
        dialogueLabel.numberOfLines = 5
        dialogueLabel.zPosition = 3
        addChild(dialogueLabel)
        
        continueLabel = SKLabelNode(fontNamed: "Aleo-Regular")
        continueLabel.text = "▼"
        continueLabel.fontSize = 24
        continueLabel.fontColor = SKColor.white
        continueLabel.horizontalAlignmentMode = .right
        continueLabel.verticalAlignmentMode = .bottom
        continueLabel.position = CGPoint(x: dialogueBackground.frame.maxX - 15, y: dialogueBackground.frame.minY + 15)
        continueLabel.zPosition = 3
        continueLabel.alpha = 0
        addChild(continueLabel)
        
        cutsceneNode = SKSpriteNode(imageNamed: "cutscene_scene4a_1")
        cutsceneNode.scale(to: CGSize(width: size.width, height: size.height))
        cutsceneNode.position = CGPoint(x: size.width/2, y: size.height/2)
        cutsceneNode.zPosition = 5
        cutsceneNode.alpha = 0
        addChild(cutsceneNode)
        
        showNextDialogue()
        
    }
    
    func createButtons() {
        let buttonSize = CGSize(width: 730, height: 92)
        let buttonSpacing: CGFloat = 20
        let totalButtonHeight = CGFloat(gameState.decisions.count) * (buttonSize.height + buttonSpacing)
        let buttonsYPosition = size.height/2 - totalButtonHeight / 2
        
        // Remove previously created buttons
        buttons.forEach { $0.removeFromParent() }
        buttons.removeAll()
        
        for index in 0..<gameState.decisions.count {
            let buttonLabel = SKLabelNode(text: gameState.decisions[index].text)
            buttonLabel.name = "\(gameState.decisions[index].dialogID)"
            buttonLabel.fontName = "Aleo-Regular"
            buttonLabel.fontSize = 32
            buttonLabel.fontColor = SKColor.white
            buttonLabel.horizontalAlignmentMode = .center
            buttonLabel.verticalAlignmentMode = .center
            buttonLabel.position = CGPoint(x: 0, y: -5) // Adjust label position if needed
            
            let buttonSize = CGSize(width: buttonSize.width, height: buttonSize.height) // Adjust the padding as needed
            
            let buttonNode = SKShapeNode(rectOf: buttonSize)
            buttonNode.fillColor = AppColor.blackColor ?? .black
            buttonNode.strokeColor = SKColor.white
            buttonNode.lineWidth = CGFloat(2)
            buttonNode.position = CGPoint(x: size.width/2, y: buttonsYPosition + CGFloat(index) * (buttonSize.height + buttonSpacing))
            buttonNode.alpha = 0.0
            isButtonVisible = false
            addChild(buttonNode)
            
            buttonLabel.zPosition = 3
            buttonNode.addChild(buttonLabel)
            
            buttons.append(buttonNode)
        }
    }
    
    func showNextDialogue() {
        continueLabel.alpha = 0
        
        for case let component as CharacterVisualComponent in characterVisualComponentSytem.components {
            if component.type == .mbokSrini || component.type == .giant || component.type == .timunMas {
                if gameState.currentDialog?.character == component.type {
                    component.characterNode.alpha = 1
                   
                    component.characterNode.zPosition = 2
                    
                    characterLabelBackground.alpha = 1
                    if gameState.currentDialog?.emotion == .normal {
                        component.characterNode.texture = SKTexture(imageNamed: "\(component.type.rawValue)_talk")
                        
                    }else {
                        component.characterNode.texture = SKTexture(imageNamed: "\(component.type.rawValue)_\(gameState.currentDialog!.emotion.rawValue)")
                    }
                    characterLabel.text = component.type.rawValue
                    
//                    if gameState.currentDialog?.character == .timunMas && component.type == .mbokSrini{
//                        component.characterNode.zPosition = 0
//                        component.characterNode.alpha = 0
//                    }
                    
                    
                } else {
                    if component.type == .mbokSrini {
                        component.characterNode.alpha = 0
                    }
                    component.characterNode.zPosition = 0
                    component.characterNode.texture = SKTexture(imageNamed: "\(component.type.rawValue)_idle")
                }
            }
            
            if gameState.currentDialog?.character != .mbokSrini && gameState.currentDialog?.character != .giant && gameState.currentDialog?.character != .timunMas{
                characterLabel.text = ""
                characterLabelBackground.alpha = 0
            }
        }
        
        let currentDialogueText = (gameState.currentDialog?.text)!
        dialogueLabel.text = ""
        currentIndex = 0
        animateTextDisplay(dialogueText: currentDialogueText)
        
        // BGM
        
        if gameState.currentDialog?.id == 0 {
            AudioManager.shared.playBackgroundMusic(fileName: "scene13a_intro")
        }

        if gameState.currentDialog?.id == 10 {
            AudioManager.shared.playBackgroundMusic(fileName: "scene13a_battle")
        }
        
        if gameState.currentDialog?.id == 35 {
            AudioManager.shared.playBackgroundMusic(fileName: "scene13a_outro")
        }
//
//
        // Sound Effect
        if gameState.currentDialog?.id == 39 {
            AudioManager.shared.playSoundEffect(fileName: "scene13a_audio1_butoIjoGrowling")
        }
        
        // In game sound effect
        
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
            hideButtons()
        } else {
            // Text display completed, wait for user interaction
            if gameState.currentDialog?.nextDialogIDs.count != 1 {
                createButtons()
                showButtons()
            } else {
                continueLabel.alpha = 1
            }
            if gameState.currentDialog?.id == 6 {
                showCutscene()
            }
            if gameState.currentDialog?.id == 12 {
                cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_2")
                showCutscene()
            }
            if gameState.currentDialog?.id == 19 {
                cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_3")
                showCutscene()
            }
            if gameState.currentDialog?.id == 27 {
                cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_4")
                showCutscene()
            }
            if gameState.currentDialog?.id == 35 {
                cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_5")
                showCutscene()
            }
            if gameState.currentDialog?.id == 31 {
                cutsceneNode.texture = SKTexture(imageNamed: "cutscene_SE2-1_1")
                showCutscene()
            }
        }
    }
    
    func showButtons() {
        for button in buttons {
            button.alpha = 1
        }
        isButtonVisible = true
    }
    
    func hideButtons() {
        for button in buttons {
            button.alpha = 0.0
        }
        isButtonVisible = false
    }
    
    private func setupEntities() {
        
        let timunMas = CreateEntity.timunMasEntity(scene: self, pos: .right)
        characters.append(timunMas)
        
        
        let giant = CreateEntity.giantEntity(scene: self, pos: .left)
        characters.append(giant)
        
        let narrator = CreateEntity.narratorEntity(scene: self)
        narrator.component(ofType: CharacterVisualComponent.self)?.characterNode.alpha = 0
        characters.append(narrator)
        
        //                let storyweaver = CreateEntity.storyWeaverEntity(scene: self)
        //                characters.append(storyweaver)
        //
        let mbokSrini = CreateEntity.mbokSriniEntity(scene: self, pos: .right)
        mbokSrini.component(ofType: CharacterVisualComponent.self)?.characterNode.alpha = 0
        characters.append(mbokSrini)
    }
    
    private func setupSystemComponents() {
        for character in characters {
            characterVisualComponentSytem.addComponent(foundIn: character)
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        characterVisualComponentSytem.update(deltaTime: currentTime)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            if isButtonVisible {
                for button in buttons {
                    if button.contains(location) {
                        handleButtonTap(button)
                        return
                    }
                }
            }
            if currentIndex >= (gameState.currentDialog?.text.count)!{
                if gameState.currentDialog?.id == gameState.dialogTree.count - 1 {
                    let gameScene = SE2Scene5(size: size)
                    gameScene.scaleMode = .aspectFill
                    let transition = SKTransition.crossFade(withDuration: 1.0)
                    view?.presentScene(gameScene, transition: transition)
                    return
                }
                else if gameState.currentDialog?.nextDialogIDs.count == 1 {
                    if gameState.currentDialog?.nextDialogIDs.first == 1000 {
                        let gameScene = ToBeContinueScene(size: size)
                        gameScene.scaleMode = .aspectFill
                        let transition = SKTransition.crossFade(withDuration: 1.0)
                        view?.presentScene(gameScene, transition: transition)
                    } else {
                        gameState.selectDecision(gameState.decisions.first(where: {$0.dialogID == (gameState.currentDialog?.nextDialogIDs.first)})!)
                        dialogueLabel.text = gameState.currentDialog?.text
                        showNextDialogue()
                    }

                    return
                }
            }
            
            // Handle touches on the screen here
            // ...
            if currentIndex < (gameState.currentDialog?.text.count)! {
                // Skip to the end of the current dialogue
                dialogueLabel.text = gameState.currentDialog?.text
                dialogueLabel.removeAllActions()
                currentIndex = (gameState.currentDialog?.text.count)!
                if gameState.currentDialog?.nextDialogIDs.count != 1 {
                    createButtons()
                    showButtons()
                } else {
                    
                    continueLabel.alpha = 1
                }
                if gameState.currentDialog?.id == 6 {
                    showCutscene()
                }
                if gameState.currentDialog?.id == 12 {
                    cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_2")
                    showCutscene()
                }
                if gameState.currentDialog?.id == 19 {
                    cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_3")
                    showCutscene()
                }
                if gameState.currentDialog?.id == 27 {
                    cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_4")
                    showCutscene()
                }
                if gameState.currentDialog?.id == 35 {
                    cutsceneNode.texture = SKTexture(imageNamed: "cutscene_scene13a_5")
                    showCutscene()
                }
            }
            
        }
        
    }
    
    func handleButtonTap(_ button: SKShapeNode) {
        // Handle button tap here
        if let buttonLabel = button.children.first as? SKLabelNode {
            print("Button tapped: \(buttonLabel.name ?? "")")
            
            if let dialogIDCast = Int(buttonLabel.name!){
                print("current dialog ID: \(dialogIDCast)")
                gameState.selectDecision(gameState.decisions.first(where: {$0.dialogID == dialogIDCast})!)
                dialogueLabel.text = gameState.currentDialog?.text
                showNextDialogue()
            }
        }
    }
    func showCutscene(){
        let notInteractive = SKAction.run {
            self.isUserInteractionEnabled = false
        }
        let fadeInAction = SKAction.fadeIn(withDuration: 2)
        let delayAction = SKAction.wait(forDuration: 2)
        let fadeOutAction = SKAction.fadeOut(withDuration: 1)
        let interactiveAction = SKAction.run {
            self.isUserInteractionEnabled = true
        }
        
        
        
        //        let nextDialogue = SKAction.run {
        //            self.gameState.selectDecision(self.gameState.decisions.first(where: {$0.dialogID == (self.gameState.currentDialog?.nextDialogIDs.first)})!)
        //
        //            self.dialogueLabel.text = self.gameState.currentDialog?.text
        //            self.showNextDialogue()
        //        }
        
        let sequence = SKAction.sequence([notInteractive, fadeInAction, delayAction, fadeOutAction, interactiveAction])
        self.cutsceneNode.run(sequence)
    }
}
