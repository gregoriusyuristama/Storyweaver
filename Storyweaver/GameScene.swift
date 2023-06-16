import SpriteKit

class GameScene: SKScene {
    var dialogueLabel: SKLabelNode!
    var dialogueText: String = "Hello, welcome to the game!"
    var characterImage: SKSpriteNode!
    var dialogueBackground: SKShapeNode!
    var currentIndex: Int = 0
    var typingSpeed: TimeInterval = 0.1 // Adjust the speed of text display here
    
    override func didMove(to view: SKView) {
        characterImage = SKSpriteNode(imageNamed: "timun_mas") // Replace "background_image" with your image name
        characterImage.position = CGPoint(x: characterImage.frame.width, y: size.height/2) // Position the image at the center of the screen
        characterImage.zPosition = -1 // Set the zPosition to be behind other nodes
        addChild(characterImage)
        
        dialogueBackground = SKShapeNode(rectOf: CGSize(width: size.width, height: size.height/3)) // Customize the size of the rectangle
        dialogueBackground.fillColor = SKColor.white // Customize the background color
        dialogueBackground.strokeColor = SKColor.clear // Hide the border of the rectangle
        dialogueBackground.position = CGPoint(x: size.width/2, y: dialogueBackground.frame.height/3)
        addChild(dialogueBackground)
        
        dialogueLabel = SKLabelNode(fontNamed: "Arial")
        dialogueLabel.fontSize = 24
        dialogueLabel.fontColor = SKColor.black // Set text color to black
        dialogueLabel.horizontalAlignmentMode = .left // Align text to the left
        dialogueLabel.verticalAlignmentMode = .top
        dialogueLabel.position = CGPoint(x: dialogueBackground.frame.minX + 10, y: dialogueBackground.frame.maxY - 10)
        addChild(dialogueLabel)
        
        animateTextDisplay()
    }
    
    func animateTextDisplay() {
        if currentIndex < dialogueText.count {
            let index = dialogueText.index(dialogueText.startIndex, offsetBy: currentIndex)
            let nextCharacter = String(dialogueText[index])
            dialogueLabel.text = (dialogueLabel.text ?? "") + nextCharacter
            currentIndex += 1
            
            let delayAction = SKAction.wait(forDuration: typingSpeed)
            let nextCharacterAction = SKAction.run(animateTextDisplay)
            let sequence = SKAction.sequence([delayAction, nextCharacterAction])
            dialogueLabel.run(sequence)
        } else {
            // Text display completed, perform any necessary actions
            // or proceed to the next dialogue
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // User interaction, e.g., skip to the end of the text or proceed to next dialogue
        dialogueLabel.text = dialogueText // Display full text immediately
        dialogueLabel.removeAllActions() // Stop the animation
        // Perform any necessary actions or proceed to the next dialogue
    }
}

