import SpriteKit
import GameplayKit
import SwiftUI

class GameScene: SKScene {
    var dialogueLabel: SKLabelNode!
    var characterLabel: SKLabelNode!
    var characterImage: SKSpriteNode!
    var giantImage: SKSpriteNode!
    var dialogueBackground: SKShapeNode!
    var currentDialogueIndex: Int = 0
    var currentIndex: Int = 0
    var typingSpeed: TimeInterval = 0.1 // Adjust the speed of text display here
    
    let visualComponentSystem = GKComponentSystem(componentClass: CharacterVisualComponent.self)
    
    var characters: [GKEntity] = []
    
    //    let buttonTitles = ["Decision 1", "Decision 2", "Decision 3", "Decision 4"]
    var buttons: [SKShapeNode] = []
    
    @ObservedObject private var gameState = GameState()
    
//    var characterDialogues: [(CharacterList, String)] = [(CharacterList.timunMas, "Hello, welcome to the game!"), (CharacterList.giant, "This is the second dialogue."), (CharacterList.timunMas, "And here's the third dialogue."), (CharacterList.narrator, "This is Narrator"), (CharacterList.storyweaver, "This is Storyweaver")]
    
    override init(){
        super.init()
        setupEntities()
    }
    
    override init(size: CGSize){
        super.init(size: size)
        setupEntities()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        dialogueBackground = SKShapeNode(rectOf: CGSize(width: size.width, height: size.height/3)) // Customize the size of the rectangle
        dialogueBackground.fillColor = SKColor.white // Customize the background color
        dialogueBackground.strokeColor = SKColor.clear // Hide the border of the rectangle
        dialogueBackground.position = CGPoint(x: size.width/2, y: dialogueBackground.frame.height/3)
        addChild(dialogueBackground)
        
        characterLabel = SKLabelNode(fontNamed: "Arial")
        characterLabel.fontSize = 48
        characterLabel.fontColor = SKColor.black
        characterLabel.horizontalAlignmentMode = .left
        characterLabel.verticalAlignmentMode = .top
        characterLabel.position = CGPoint(x: dialogueBackground.frame.minX + 10, y: dialogueBackground.frame.maxY - 10)
        addChild(characterLabel)
        
        dialogueLabel = SKLabelNode(fontNamed: "Arial")
        dialogueLabel.fontSize = 24
        dialogueLabel.fontColor = SKColor.black // Set text color to black
        dialogueLabel.horizontalAlignmentMode = .left // Align text to the left
        dialogueLabel.verticalAlignmentMode = .top
        dialogueLabel.position = CGPoint(x: dialogueBackground.frame.minX + 10, y: characterLabel.position.y - 50)
        addChild(dialogueLabel)
        
        //        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(buttonTapped))
        //        view.addGestureRecognizer(tapGesture)
        
        showNextDialogue()
        
    }
    
    func createButtons() {
        let buttonSize = CGSize(width: 150, height: 50)
        let buttonSpacing: CGFloat = 20
        let totalButtonHeight = CGFloat(gameState.decisions.count) * (buttonSize.height + buttonSpacing)
        let buttonsYPosition = totalButtonHeight / 2
        
        // Remove previously created buttons
        buttons.forEach { $0.removeFromParent() }
        buttons.removeAll()
        
        for index in 0..<gameState.decisions.count {
            let buttonNode = SKShapeNode(rectOf: buttonSize)
            buttonNode.fillColor = SKColor.blue
            buttonNode.position = CGPoint(x: size.width - buttonSize.width, y: buttonsYPosition + CGFloat(index) * (buttonSize.height + buttonSpacing))
            //            buttonNode.name = "\(nextDialogIDs[index])"
            addChild(buttonNode)
            
            let buttonLabel = SKLabelNode(text: gameState.decisions[index].text)
            buttonLabel.name = "\(gameState.decisions[index].dialogID)"
            buttonLabel.fontName = "Arial"
            buttonLabel.fontSize = 20
            buttonLabel.fontColor = SKColor.white
            buttonLabel.horizontalAlignmentMode = .center
            buttonLabel.verticalAlignmentMode = .center
            buttonLabel.position = CGPoint(x: 0, y: -5) // Adjust label position if needed
            buttonNode.addChild(buttonLabel)
            
            buttons.append(buttonNode)
        }
    }
    
    
    
    func showNextDialogue() {
        
        //        if let currentDialogueText = gameState.currentDialog?.text {
        //            dialogueLabel.text = ""
        //            currentIndex = 0
        //            animateTextDisplay(dialogueText: currentDialogueText)
        //            currentDialogueIndex += 1
        //        }
        
        
        //        let currentDialogueText = characterDialogues[currentDialogueIndex].1
        //        dialogueLabel.text = ""
        //        currentIndex = 0
        //        animateTextDisplay(dialogueText: currentDialogueText)
        //        currentDialogueIndex += 1
        
        //        if currentDialogueIndex < characterDialogues.count {
        
        let characterTimunMas = (characters.first(where: {$0.component(ofType: CharacterVisualComponent.self)?.type == .timunMas}))?.component(ofType: CharacterVisualComponent.self)
        
        let characterGiant = (characters.first(where: {$0.component(ofType: CharacterVisualComponent.self)?.type == .giant}))?.component(ofType: CharacterVisualComponent.self)
        
        let characterNarrator = (characters.first(where: {$0.component(ofType: CharacterVisualComponent.self)?.type == .narrator}))?.component(ofType: CharacterVisualComponent.self)
        
        let characterStoryweaver = (characters.first(where: {$0.component(ofType: CharacterVisualComponent.self)?.type == .storyweaver}))?.component(ofType: CharacterVisualComponent.self)
        
        let characterMbokSrini = (characters.first(where: {$0.component(ofType: CharacterVisualComponent.self)?.type == .mbokSrini}))?.component(ofType: CharacterVisualComponent.self)
        
        if gameState.currentDialog?.character == characterTimunMas?.type {
            characterTimunMas?.characterNode.alpha = 1.0
            characterTimunMas?.characterNode.zPosition = 0
            characterGiant?.characterNode.alpha = 0.5
            characterGiant?.characterNode.zPosition = -1
            characterNarrator?.characterNode.alpha = 0.0
            characterNarrator?.characterNode.zPosition = 0
            characterStoryweaver?.characterNode.alpha = 0.0
            characterStoryweaver?.characterNode.zPosition = -1
            characterMbokSrini?.characterNode.alpha = 0.0
            characterMbokSrini?.characterNode.zPosition = -1
            characterLabel.text = characterTimunMas?.type.rawValue
        } else if gameState.currentDialog?.character == characterGiant?.type{
            characterTimunMas?.characterNode.alpha = 0.5
            characterTimunMas?.characterNode.zPosition = -1
            characterGiant?.characterNode.alpha = 1.0
            characterGiant?.characterNode.zPosition = 0
            characterNarrator?.characterNode.alpha = 0.0
            characterNarrator?.characterNode.zPosition = 0
            characterStoryweaver?.characterNode.alpha = 0.0
            characterStoryweaver?.characterNode.zPosition = -1
            characterMbokSrini?.characterNode.alpha = 0.0
            characterMbokSrini?.characterNode.zPosition = -1
            characterLabel.text = characterGiant?.type.rawValue
        } else if gameState.currentDialog?.character == characterNarrator?.type{
            characterTimunMas?.characterNode.alpha = 0.0
            characterTimunMas?.characterNode.zPosition = -1
            characterGiant?.characterNode.alpha = 0.0
            characterGiant?.characterNode.zPosition = -1
            characterNarrator?.characterNode.alpha = 1.0
            characterNarrator?.characterNode.zPosition = 0
            characterStoryweaver?.characterNode.alpha = 0.0
            characterStoryweaver?.characterNode.zPosition = -1
            characterMbokSrini?.characterNode.alpha = 0.0
            characterMbokSrini?.characterNode.zPosition = -1
            characterLabel.text = characterNarrator?.type.rawValue
        } else if gameState.currentDialog?.character == characterStoryweaver?.type{
            characterTimunMas?.characterNode.alpha = 0.0
            characterTimunMas?.characterNode.zPosition = -1
            characterGiant?.characterNode.alpha = 0.0
            characterGiant?.characterNode.zPosition = -1
            characterNarrator?.characterNode.alpha = 0.0
            characterNarrator?.characterNode.zPosition = 0
            characterStoryweaver?.characterNode.alpha = 1.0
            characterStoryweaver?.characterNode.zPosition = -1
            characterMbokSrini?.characterNode.alpha = 0.0
            characterMbokSrini?.characterNode.zPosition = -1
            characterLabel.text = characterStoryweaver?.type.rawValue
        } else if gameState.currentDialog?.character == characterMbokSrini?.type{
            characterTimunMas?.characterNode.alpha = 0.0
            characterTimunMas?.characterNode.zPosition = -1
            characterGiant?.characterNode.alpha = 0.0
            characterGiant?.characterNode.zPosition = -1
            characterNarrator?.characterNode.alpha = 0.0
            characterNarrator?.characterNode.zPosition = -1
            characterStoryweaver?.characterNode.alpha = 0
            characterStoryweaver?.characterNode.zPosition = -1
            characterMbokSrini?.characterNode.alpha = 1.0
            characterMbokSrini?.characterNode.zPosition = 0
            characterLabel.text = characterMbokSrini?.type.rawValue
        }
        
        
        
        let currentDialogueText = (gameState.currentDialog?.text)!
        dialogueLabel.text = ""
        currentIndex = 0
        animateTextDisplay(dialogueText: currentDialogueText)
        currentDialogueIndex += 1
        
        createButtons()
        //        } else {
        
        //        }
    }
    
    func animateTextDisplay(dialogueText: String) {
        if currentIndex < dialogueText.count {
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
            for button in buttons {
                button.alpha = 0.5
            }
        } else {
            // Text display completed, wait for user interaction
            for button in buttons {
                button.alpha = 1.0
            }
        }
    }
    
    private func setupEntities() {
        //        createButtons()
        
        let timunMas = createTimunMasEntity()
        characters.append(timunMas)
        
        
        let giant = createGiantEntity()
        characters.append(giant)
        
        
        let narrator = createNarratorEntity()
        characters.append(narrator)
        
        let storyweaver = createStoryweaverEntity()
        characters.append(storyweaver)
        
        let mbokSrini = createMbokSriniEntity()
        characters.append(mbokSrini)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            // Check if any of the buttons were tapped
            if currentIndex >= (gameState.currentDialog?.text.count)!{
                for button in buttons {
                    if button.contains(location) {
                        handleButtonTap(button)
                        return
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
                for button in buttons {
                    button.alpha = 1.0
                }
            }
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
}

extension GameScene {
    private func createTimunMasEntity() -> GKEntity {
        let timunMas = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .timunMas, size: self.size)
        timunMas.addComponent(characterVisualComponent)
        
        self.addChild(characterVisualComponent.characterNode)
        return timunMas
    }
    
    private func createGiantEntity() -> GKEntity {
        let giant = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .giant, size: self.size)
        giant.addComponent(characterVisualComponent)
        
        self.addChild(characterVisualComponent.characterNode)
        return giant
    }
    
    private func createNarratorEntity() -> GKEntity {
        let narrator = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .narrator, size: self.size)
        narrator.addComponent(characterVisualComponent)
        
        self.addChild(characterVisualComponent.characterNode)
        return narrator
    }
    
    private func createStoryweaverEntity() -> GKEntity {
        let storyweaver = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .storyweaver, size: self.size)
        storyweaver.addComponent(characterVisualComponent)
        
        self.addChild(characterVisualComponent.characterNode)
        return storyweaver
    }
    
    private func createMbokSriniEntity() -> GKEntity {
        let mbokSrini = GKEntity()
        
        let characterVisualComponent = CharacterVisualComponent(type: .mbokSrini, size: self.size)
        mbokSrini.addComponent(characterVisualComponent)
        
        self.addChild(characterVisualComponent.characterNode)
        return mbokSrini
    }
}

