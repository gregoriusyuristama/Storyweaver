//
//  TrimBushesScene.swift
//  wateringPlantTest
//
//  Created by Alvito . on 27/06/23.
//

import GameplayKit
import SpriteKit

class TrimBushesScene: SKScene {
    var bushes: [SKSpriteNode] = []
    var trimmedBushes: [SKSpriteNode] = []
    var congratsLabel: SKLabelNode?
    
    override func didMove(to view: SKView) {
        // Create the background
//        let background = SKSpriteNode(imageNamed: "background")
//        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        addChild(background)
        
        // Create bushes nodes
        let bush1 = createBushNode()
        bush1.position = CGPoint(x: size.width * 0.2, y: size.height * 0.15)
        addChild(bush1)
        bushes.append(bush1)
        
        let bush2 = createBushNode()
        bush2.position = CGPoint(x: size.width * 0.5, y: size.height * 0.17)
        addChild(bush2)
        bushes.append(bush2)
        
        let bush3 = createBushNode()
        bush3.position = CGPoint(x: size.width * 0.8, y: size.height * 0.15)
        addChild(bush3)
        bushes.append(bush3)
        
        // Create the congrats label
        congratsLabel = SKLabelNode(text: "Congrats!")
        congratsLabel?.position = CGPoint(x: size.width / 2, y: size.height / 2)
        congratsLabel?.fontSize = 48
        congratsLabel?.fontColor = .white
        congratsLabel?.alpha = 0
        addChild(congratsLabel!)
    }
    
    func createBushNode() -> SKSpriteNode {
        // Create a bush node
        let bushTexture = SKTexture(imageNamed: "weed")
        let bushNode = SKSpriteNode(texture: bushTexture)
        
        // Set up physics properties
        bushNode.physicsBody = SKPhysicsBody(texture: bushTexture, size: bushNode.size)
        bushNode.physicsBody?.isDynamic = false
        
        // Set up other properties
        bushNode.name = "bush"
        bushNode.setScale(0.5)
        
        return bushNode
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Check if the touch is moving across a bush node
        for touch in touches {
            let location = touch.location(in: self)
            let previousLocation = touch.previousLocation(in: self)
            
            if let bush = bushAtPoint(location) {
                // Calculate the horizontal distance moved
                let deltaX = location.x - previousLocation.x
                
                if abs(deltaX) > 10 {
                    // Check if the swipe is primarily horizontal
                    let swipeRight = deltaX > 0
                    let swipeLeft = deltaX < 0
                    
                    if swipeRight || swipeLeft {
                        // Check if the bush is already trimmed
                        if !trimmedBushes.contains(bush) {
                            // Fade out and remove the bush
                            fadeOutAndRemove(node: bush)
                            trimmedBushes.append(bush)
                            
                            // Check if all bushes are trimmed
                            if trimmedBushes.count == bushes.count {
                                showCongratsLabel()
                            }
                        }
                    }
                }
            }
        }
    }
    
    func bushAtPoint(_ point: CGPoint) -> SKSpriteNode? {
        for bushNode in bushes {
            if bushNode.contains(point) {
                return bushNode
            }
        }
        return nil
    }
    
    func fadeOutAndRemove(node: SKNode) {
        // Create a fade out action
        let fadeOut = SKAction.fadeOut(withDuration: 0.5)
        
        // Create a remove from parent action
        let removeFromParent = SKAction.removeFromParent()
        
        // Create a sequence of actions: fade out, remove from parent
        let sequence = SKAction.sequence([fadeOut, removeFromParent])
        
        // Run the sequence on the node
        node.run(sequence)
    }
    
    func showCongratsLabel() {
        // Fade in the congrats label
        let fadeIn = SKAction.fadeIn(withDuration: 0.5)
        congratsLabel?.run(fadeIn)
    }
}
