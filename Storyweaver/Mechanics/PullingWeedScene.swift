//
//  GameScene.swift
//  wateringPlantTest
//
//  Created by Alvito . on 26/06/23.
//

import GameplayKit
import SpriteKit

class PullingWeedScene: SKScene {
    var selectedWeed: SKSpriteNode?
    var remainingWeeds: Int = 0
    var congratsLabel: SKLabelNode?
    var backgroundNode: SKSpriteNode = SKSpriteNode(imageNamed: "background_houseYardPuzzle")
    
    override func didMove(to view: SKView) {
        // Create the background
        backgroundNode.position = CGPoint(x: size.width / 2, y: size.height / 2)
        backgroundNode.scale(to: size)
        addChild(backgroundNode)
        
        // Create weeds/grass nodes
        let weed1 = createWeedNode()
        weed1.position = CGPoint(x: size.width * 0.2, y: size.height * 0.15)
        addChild(weed1)
        
        let weed2 = createWeedNode()
        weed2.position = CGPoint(x: size.width * 0.5, y: size.height * 0.17)
        addChild(weed2)
        
        let weed3 = createWeedNode()
        weed3.position = CGPoint(x: size.width * 0.8, y: size.height * 0.15)
        addChild(weed3)
        
        // Update the remaining weeds count
        remainingWeeds = 3
        
        // Create and hide the congratulatory text
        congratsLabel = SKLabelNode(fontNamed: "Arial")
        congratsLabel?.text = "Congratulations!"
        congratsLabel?.fontSize = 40
        congratsLabel?.position = CGPoint(x: size.width / 2, y: size.height / 2)
        congratsLabel?.alpha = 0.0
        addChild(congratsLabel!)
    }
    
    func createWeedNode() -> SKSpriteNode {
        // Create a weed/grass node
        let weedTexture = SKTexture(imageNamed: "weeds")
        let weedNode = SKSpriteNode(texture: weedTexture)
        
        // Set up physics properties
        weedNode.physicsBody = SKPhysicsBody(texture: weedTexture, size: weedNode.size)
        weedNode.physicsBody?.isDynamic = false
        
        // Set up other properties
        weedNode.name = "weed"
        weedNode.setScale(0.3)
        
        return weedNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Check if the touch is on a weed/grass node
        for touch in touches {
            let location = touch.location(in: self)
            let node = atPoint(location)
            
            if node.name == "weed" {
                // Record the selected weed node
                selectedWeed = node as? SKSpriteNode
                selectedWeed?.userData?["initialPosition"] = selectedWeed?.position
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Move the selected weed node with the touch
        for touch in touches {
            let location = touch.location(in: self)
            
            if let weed = selectedWeed {
                weed.position = location
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Check if the weed was dragged and fade it out if necessary
        if let weed = selectedWeed {
            if weed.position != weed.userData?["initialPosition"] as? CGPoint {
                fadeOutAndRemove(node: weed)
            }
        }
        
        // Reset the selected weed node
        selectedWeed = nil
    }
    
    func fadeOutAndRemove(node: SKNode) {
        // Create a fade out action
        let fadeOut = SKAction.fadeOut(withDuration: 0.5)
        
        // Create a remove from parent action
        let removeFromParent = SKAction.removeFromParent()
        
        // Create a sequence of actions: fade out, remove from parent
        let sequence = SKAction.sequence([fadeOut, removeFromParent])
        
        // Run the sequence on the node
        node.run(sequence) {
            // Decrement the remaining weeds count
            self.remainingWeeds -= 1
            
            // Check if all weeds have been removed
            if self.remainingWeeds == 0 {
                // Show the congratulatory text
                self.showCongratsText()
                // ID Dialog Pull Weeds
                ChoresPuzzleHelper.completedTask.insert(5)
                let gameScene = SeventhScene(size: self.size, gameState: GameState(dialogTree: DialogTree.DialogTreeScene7, currentID: 1))
                gameScene.scaleMode = .aspectFill
                let transition = SKTransition.crossFade(withDuration: 1.0)
                self.view?.presentScene(gameScene, transition: transition)
            }
        }
    }
    
    func showCongratsText() {
        // Fade in the congratulatory text
        let fadeIn = SKAction.fadeIn(withDuration: 0.5)
        congratsLabel?.run(fadeIn)
    }
}
