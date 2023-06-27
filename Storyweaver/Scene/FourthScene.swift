//
//  FourthSceneNew.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/25/23.
//

import Foundation
import SpriteKit
import GameplayKit
import SwiftUI

class FourthScene: SKScene {
    var dialogueLabel: SKLabelNode = SKLabelNode()
    var characterLabel: SKLabelNode = SKLabelNode()
    var continueLabel: SKLabelNode = SKLabelNode()
    
    var characterImage: SKSpriteNode = SKSpriteNode()
    var giantImage: SKSpriteNode = SKSpriteNode()
    var backgroundNode: SKSpriteNode = SKSpriteNode()
    var dialogueBackground: SKShapeNode = SKShapeNode()
    
    
    var currentIndex: Int = 0
    var isButtonVisible: Bool = false
    
    var characters: [GKEntity] = []
    var buttons: [SKShapeNode] = []
    
    let characterVisualComponentSytem = GKComponentSystem(componentClass: CharacterVisualComponent.self)
    
    
    @ObservedObject private var gameState = GameState(dialogTree: DialogTree.DialogTreeScene4)
    
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
    
    init(size: CGSize, gameState: GameState) {
        super.init(size: size)
        self.gameState = gameState
        setupEntities()
        setupSystemComponents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        //        backgroundColor = .brown
        backgroundNode = SKSpriteNode(imageNamed: "background_wood.png")
        backgroundNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        backgroundNode.scale(to: CGSize(width: size.width, height: size.height))
        backgroundNode.zPosition = -5  // Ensure the background is behind other nodes
        addChild(backgroundNode)
        
        dialogueBackground = SKShapeNode(rectOf: CGSize(width: size.width - (size.width * 0.1), height: size.height/3 - (size.height*0.1))) // Customize the size of the rectangle
        dialogueBackground.fillColor = SKColor.black // Customize the background color
        dialogueBackground.strokeColor = SKColor.clear // Hide the border of the rectangle
        dialogueBackground.position = CGPoint(x: size.width/2, y: dialogueBackground.frame.height/3 + (size.height*0.1))
        dialogueBackground.zPosition = 1
        addChild(dialogueBackground)
        
        characterLabel = SKLabelNode(fontNamed: "Aleo-Bold")
        characterLabel.fontSize = 36
        characterLabel.fontColor = SKColor.white
        characterLabel.horizontalAlignmentMode = .left
        characterLabel.verticalAlignmentMode = .top
        characterLabel.position = CGPoint(x: dialogueBackground.frame.minX + 10, y: dialogueBackground.frame.maxY - 10)
        characterLabel.zPosition = 2
        addChild(characterLabel)
        
        dialogueLabel = SKLabelNode(fontNamed: "Aleo-Regular")
        dialogueLabel.fontSize = 24
        dialogueLabel.fontColor = SKColor.white // Set text color to black
        dialogueLabel.horizontalAlignmentMode = .center // Align text to the left
        dialogueLabel.verticalAlignmentMode = .top
        dialogueLabel.position = CGPoint(x: size.width/2, y: characterLabel.position.y - 50)
        dialogueLabel.lineBreakMode = .byWordWrapping
        dialogueLabel.preferredMaxLayoutWidth = dialogueBackground.frame.width - size.width * 0.05
        dialogueLabel.numberOfLines = 5
        dialogueLabel.zPosition = 2
        addChild(dialogueLabel)
        
        continueLabel = SKLabelNode(fontNamed: "Aleo-Regular")
        continueLabel.text = "Tap to continue..."
        continueLabel.fontSize = 16
        continueLabel.fontColor = SKColor.white
        continueLabel.horizontalAlignmentMode = .right
        continueLabel.verticalAlignmentMode = .bottom
        continueLabel.position = CGPoint(x: dialogueBackground.frame.maxX - 10, y: dialogueBackground.frame.minY + 10)
        continueLabel.zPosition = 2
        continueLabel.alpha = 0
        addChild(continueLabel)
        
        
        
        showNextDialogue()
        
    }
    func createButtons() {
        let buttonSize = CGSize(width: 300, height: 50)
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
            buttonLabel.fontSize = 24
            buttonLabel.fontColor = SKColor.black
            buttonLabel.horizontalAlignmentMode = .center
            buttonLabel.verticalAlignmentMode = .center
            buttonLabel.position = CGPoint(x: 0, y: -5) // Adjust label position if needed
            
            let buttonSize = CGSize(width: buttonLabel.frame.width + 20, height: 50) // Adjust the padding as needed
            
            let buttonNode = SKShapeNode(rectOf: buttonSize)
            buttonNode.fillColor = SKColor.white
            buttonNode.strokeColor = SKColor.black
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
        print("current dialog ID: \(gameState.currentDialog?.id)")
        print("next dialog ID(s): \(gameState.currentDialog?.nextDialogIDs)")
        continueLabel.alpha = 0
        for case let component as CharacterVisualComponent in characterVisualComponentSytem.components {
            if component.type == .mbokSrini || component.type == .timunMas || component.type == .storyweaver{
                if gameState.currentDialog?.character == component.type {
                    if component.type == .storyweaver {
                        component.characterNode.alpha = 0
                    }else {
                        component.characterNode.alpha = 1
                        
                    }
                    
                    //MARK: masih belum ada gambar storyweaver ngomong
                    
                    if component.type != .storyweaver {
                        component.characterNode.texture = SKTexture(imageNamed: "\(component.type.rawValue)_talk")
                    }
                    
                    characterLabel.text = component.type.rawValue
                } else {
                    component.characterNode.alpha = 0.5
                    if component.type == .storyweaver {
                        component.characterNode.alpha = 0
                    }
                    component.characterNode.texture = SKTexture(imageNamed: component.type.rawValue)
                }
            }
            
            if gameState.currentDialog?.character == .narrator{
                characterLabel.text = ""
            }
        }
        
        let currentDialogueText = (gameState.currentDialog?.text)!
        dialogueLabel.text = ""
        currentIndex = 0
        animateTextDisplay(dialogueText: currentDialogueText)
        
        // BGM
        if gameState.currentDialog?.id == 0 {
            AudioManager.shared.playBackgroundMusic(fileName: "scene4")
        }
        
        
        //Sound Effect
        if gameState.currentDialog?.id == 1 {
            AudioManager.shared.playSoundEffect(fileName: "scene4_audio1_reliefSigh")
        }
        if gameState.currentDialog?.id == 5 {
            AudioManager.shared.playSoundEffect(fileName: "scene4_audio3_babyLaugh")
        }
        
        if gameState.currentDialog?.id == 6 {
            AudioManager.shared.playSoundEffect(fileName: "scene4_audio2_mbokSriniLaugh")
        }
        if gameState.currentDialog?.id == 14 {
            AudioManager.shared.playSoundEffect(fileName: "scene4_audio1_reliefSigh")
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
            
            hideButtons()
        } else {
            // Text display completed, wait for user interaction
            if gameState.currentDialog?.nextDialogIDs.count != 1 {
                if gameState.currentDialog?.id == 11 {
                    let gameScene = InsertTimunName(size: size)
                    gameScene.scaleMode = .aspectFill
                    let transition = SKTransition.crossFade(withDuration: 1.0)
                    view?.presentScene(gameScene, transition: transition)
                    return
                }
                createButtons()
                showButtons()
            } else {
                continueLabel.alpha = 1
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
        
        //        let timunMas = CreateEntity.timunMasEntity(scene: self, pos: .right)
        //        characters.append(timunMas)
        
        
        //        let giant = CreateEntity.giantEntity(scene: self, pos: .right)
        //        characters.append(giant)
        
        let narrator = CreateEntity.narratorEntity(scene: self)
        narrator.component(ofType: CharacterVisualComponent.self)?.characterNode.alpha = 0
        characters.append(narrator)
        
        let storyweaver = CreateEntity.storyWeaverEntity(scene: self, pos: .right)
        //        storyweaver.component(ofType: CharacterVisualComponent.self)?.characterNode.scale(to: CGSize(width: size.width/3, height: size.height/3))
        characters.append(storyweaver)
        
        let mbokSrini = CreateEntity.mbokSriniEntity(scene: self)
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
                    let gameScene = ActTitleScene(fileNamed: "ActTitleScene")
                    gameScene?.actNumber = 2
                    gameScene?.actTitle = "The Journey of Youth"
                    gameScene?.nextScene = FifthScene(size: size)
                    gameScene!.scaleMode = .aspectFill
                    let transition = SKTransition.crossFade(withDuration: 1.0)
                    view?.presentScene(gameScene!, transition: transition)
                    return
                } else if gameState.currentDialog?.nextDialogIDs.count == 1 {
                    gameState.selectDecision(gameState.decisions.first(where: {$0.dialogID == (gameState.currentDialog?.nextDialogIDs.first)})!)
                    
                    dialogueLabel.text = gameState.currentDialog?.text
                    showNextDialogue()
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
                    if gameState.currentDialog?.id == 11 {
                        view?.scene?.isUserInteractionEnabled = false
                        view?.scene?.run(SKAction.wait(forDuration: 1.5)){
                            let gameScene = InsertTimunName(size: self.size)
                            gameScene.scaleMode = .aspectFill
                            let transition = SKTransition.crossFade(withDuration: 1.0)
                            self.view?.presentScene(gameScene, transition: transition)
                            return
                        }
                       
                    }
                    continueLabel.alpha = 1
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
}
