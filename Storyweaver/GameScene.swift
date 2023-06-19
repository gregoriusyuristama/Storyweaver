import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var dialogueLabel: SKLabelNode!
    var characterLabel: SKLabelNode!
    var dialogueTexts: [String] = ["Hello, welcome to the game!", "This is the second dialogue.", "And here's the third dialogue."] // Array of dialogue texts
    var characterImage: SKSpriteNode!
    var giantImage: SKSpriteNode!
    var dialogueBackground: SKShapeNode!
    var currentDialogueIndex: Int = 0
    var currentIndex: Int = 0
    var typingSpeed: TimeInterval = 0.1 // Adjust the speed of text display here
    
    let visualComponentSystem = GKComponentSystem(componentClass: CharacterVisualComponent.self)
    
    var characters: [GKEntity] = []
    
    var characterDialogues: [(CharacterList, String)] = [(CharacterList.timunMas, "Hello, welcome to the game!"), (CharacterList.giant, "This is the second dialogue."), (CharacterList.timunMas, "And here's the third dialogue.")]
    
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
        
        showNextDialogue()
    }
    
    func showNextDialogue() {
        
        if currentDialogueIndex < characterDialogues.count {
            
            let characterTimunMas = (characters.first(where: {$0.component(ofType: CharacterVisualComponent.self)?.type == .timunMas}))?.component(ofType: CharacterVisualComponent.self)
//            let characterTimunMas = timunMas?.component(ofType: CharacterVisualComponent.self)
            
            let characterGiant = (characters.first(where: {$0.component(ofType: CharacterVisualComponent.self)?.type == .giant}))?.component(ofType: CharacterVisualComponent.self)
//            let characterGiant = giant?.component(ofType: CharacterVisualComponent.self)
            
            if characterDialogues[currentDialogueIndex].0 == characterTimunMas?.type {
                characterTimunMas?.characterNode.alpha = 1.0
                characterTimunMas?.characterNode.zPosition = 0
                characterGiant?.characterNode.alpha = 0.5
                characterGiant?.characterNode.zPosition = -1
                characterLabel.text = "Timun Mas"
            } else if characterDialogues[currentDialogueIndex].0 == characterGiant?.type{
                characterTimunMas?.characterNode.alpha = 0.5
                characterTimunMas?.characterNode.zPosition = -1
                characterGiant?.characterNode.alpha = 1.0
                characterGiant?.characterNode.zPosition = 0
                characterLabel.text = "Giant"
            }
            
            let currentDialogueText = characterDialogues[currentDialogueIndex].1
            dialogueLabel.text = ""
            currentIndex = 0
            animateTextDisplay(dialogueText: currentDialogueText)
            currentDialogueIndex += 1
        } else {
            
        }
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
        } else {
            // Text display completed, wait for user interaction
        }
    }
    
    private func setupEntities() {
        let timunMas = createTimunMasEntity()
        characters.append(timunMas)
        
        
        let giant = createGiantEntity()
        characters.append(giant)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if currentIndex < dialogueTexts[currentDialogueIndex - 1].count {
            // Skip to the end of the current dialogue
            dialogueLabel.text = dialogueTexts[currentDialogueIndex - 1]
            dialogueLabel.removeAllActions()
            currentIndex = dialogueTexts[currentDialogueIndex - 1].count
        } else {
            // Proceed to the next dialogue
            showNextDialogue()
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
}

