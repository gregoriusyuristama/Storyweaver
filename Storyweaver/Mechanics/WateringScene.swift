//
//  WateringScene.swift
//  wateringPlantTest
//
//  Created by Alvito . on 26/06/23.
//


import GameplayKit
import SpriteKit

class WateringScene: SKScene {
    
    private var label: SKLabelNode?
    private var spinnyNode: SKShapeNode?
    private var wateringPot: SKSpriteNode?
    private var plants: [SKSpriteNode] = []
    private var congratulationsLabel: SKLabelNode?
    private let wateringThreshold: CGFloat = 450.0
    
    override func didMove(to view: SKView) {
        
        // Create the background
//        let background = SKSpriteNode(imageNamed: "background")
//        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        addChild(background)
        
        // Create and position the label and spinnyNode as before...
        
        // Create the watering pot node
        wateringPot = SKSpriteNode(imageNamed: "wateringPot")
        wateringPot?.position = CGPoint(x: 800, y: 700)
        wateringPot?.setScale(0.5)
        addChild(wateringPot!)
        
        // Create and position the plant nodes
        let plant1 = createPlantNode(position: CGPoint(x: 300, y: 200))
        let plant2 = createPlantNode(position: CGPoint(x: 700, y: 300))
        let plant3 = createPlantNode(position: CGPoint(x: 1100, y: 200))
        plants = [plant1, plant2, plant3]
        for plant in plants {
            addChild(plant)
        }
        
        // For after watered textures
//        let wateredPlantTexture = SKTexture(imageNamed: "plant_after")

        
        
        // Create the "Congratulations" label
        congratulationsLabel = SKLabelNode(text: "Congratulations!")
        congratulationsLabel?.position = CGPoint(x: size.width / 2, y: size.height / 2)
        congratulationsLabel?.fontSize = 40
        congratulationsLabel?.fontColor = SKColor.green
        congratulationsLabel?.alpha = 0.0
        addChild(congratulationsLabel!)
    }
    
    
    private func createPlantNode(position: CGPoint) -> SKSpriteNode {
        let plantNode = SKSpriteNode(imageNamed: "plant_before")
        plantNode.position = position
        plantNode.setScale(0.5)
        return plantNode
    }
    
    // Handle dragging of the watering pot
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        
        let touchLocation = touch.location(in: self)
        
        // For after watering texture
        let wateredPlantTexture = SKTexture(imageNamed: "plant_after")
        let wateringPotTexture = SKTexture(imageNamed: "wateringPot_skew")
        
        // Update the position of the watering pot
        wateringPot?.position = touchLocation
        
        // Calculate the skew angle based on the touch position
        // let maxX = size.width
        // let skewFactor: CGFloat = 0.1 // Adjust the skew factor to control the amount of skewing
        
        // Calculate the skew angle based on the X position of the touch
        // let skewAngle = 45
        
        // Apply the skew transformation to the watering pot
        // wateringPot?.zRotation = CGFloat(skewAngle)
        
        // Check if the watering pot is above any plant nodes
        for plant in plants {
            let plantPosition = convert(plant.position, from: plant.parent!)
            let distance = abs(plantPosition.y - touchLocation.y)
            
            if distance <= wateringThreshold && abs(touchLocation.x - plantPosition.x) <= plant.size.width/2 {
                // Water the plant
                // plant.colorBlendFactor = 0.5  // Change appearance to indicate watering
                // Update plant state or perform other watering logic
//                let wateredPlantTexture = SKTexture(imageNamed: "plant_after")
                plant.texture = wateredPlantTexture
                wateringPot?.texture = wateringPotTexture
            }
        }
        
        // Old watering plant logic
//        for plant in plants {
//                  if plant.frame.contains(touchLocation) {
//                      // Water the plant
//                      plant.colorBlendFactor = 0.5  // Change appearance to indicate watering
//                      // Update plant state or perform other watering logic
//                  }
//              }
        
        
        // Check if all plants are watered
        let allPlantsWatered = plants.allSatisfy { $0.texture == wateredPlantTexture }
        
        if allPlantsWatered {
            // Show the "Congratulations" label
            congratulationsLabel?.run(SKAction.fadeIn(withDuration: 0.5))
            // ID button watering scene = 1
            ChoresPuzzleHelper.completedTask.insert(2)
            let gameScene = SeventhScene(size: size, gameState: GameState(dialogTree: DialogTree.DialogTreeScene7, currentID: 1))
            gameScene.scaleMode = .aspectFill
            let transition = SKTransition.crossFade(withDuration: 1.0)
            view?.presentScene(gameScene, transition: transition)
        }
    }
    
    
    // Update the scene before rendering each frame
    override func update(_ currentTime: TimeInterval) {
        // Update the state of the plants or perform other game-related logic
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Reset the skew angle or rotation angle of the watering pot
        wateringPot?.zRotation = 0
        
        // Perform any other necessary actions when dragging ends
    }
}
