//
//  SwipeToClearImage.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/26/23.
//

import Foundation
import SpriteKit

class SwipeToClearImage: SKScene {
    
    
    override init() {
        super.init()
    }
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //    var topImageNode: SKSpriteNode!
    //    var bottomImageNode: SKSpriteNode!
    //    var maskNode: SKCropNode?
    
    
    var blueNodes: [SKSpriteNode] = []
    var redNodes: [SKSpriteNode] = []
    
    
    override func didMove(to view: SKView) {
        let gridSize = CGSize(width: 30, height: 30) // Size of each node in the grid
        let gridSpacing: CGFloat = 5 // Spacing between nodes in the grid
        let numRows = 3 // Number of rows in the grid
        let numColumns = 3 // Number of columns in the grid
        
        // Calculate the total width and height of the grid
        let totalGridWidth = (gridSize.width + gridSpacing) * CGFloat(numColumns) - gridSpacing
        let totalGridHeight = (gridSize.height + gridSpacing) * CGFloat(numRows) - gridSpacing
        
        // Calculate the starting position for the grid
        let startX = frame.midX - totalGridWidth / 2
        let startY = frame.midY - totalGridHeight / 2
        
        // Create and position the blue nodes in the grid
        for row in 0..<numRows {
            for column in 0..<numColumns {
                let blueNode = SKSpriteNode(color: .blue, size: gridSize)
                blueNode.position = CGPoint(x: startX + CGFloat(column) * (gridSize.width + gridSpacing),
                                            y: startY + CGFloat(row) * (gridSize.height + gridSpacing))
                
                blueNode.name = "blueNode"
                addChild(blueNode)
                blueNodes.append(blueNode)
                
                let redNode = SKSpriteNode(color: .red, size: gridSize)
                redNode.position = blueNode.position
                redNode.zPosition = blueNode.zPosition + 1
                redNode.name = "redNode"
                addChild(redNode)
                redNodes.append(redNode)
            }
        }
        
        
        //        // Create and position the bottom image node
        //        bottomImageNode = SKSpriteNode(imageNamed: "testBlue")
        //        bottomImageNode.scale(to: CGSize(width: 30, height: 30))
        //        bottomImageNode.position = CGPoint(x: frame.midX, y: frame.midY)
        //        addChild(bottomImageNode)
        //
        //        // Create and position the top image node
        //        topImageNode = SKSpriteNode(imageNamed: "testRed")
        //        topImageNode.scale(to: CGSize(width: 30, height: 30))
        //        topImageNode.position = CGPoint(x: frame.midX, y: frame.midY)
        //
        //        // Create a crop node for masking
        //        maskNode = SKCropNode()
        //
        //        // Add the bottom image node as the mask node's mask
        //        maskNode?.maskNode = bottomImageNode
        //
        //        // Add the top image node as a child of the crop node
        //        maskNode?.addChild(topImageNode)
        //
        //        // Add the crop node as a child of the scene
        //        addChild(maskNode!)
        //
        //        // Enable user interaction
        //        isUserInteractionEnabled = true
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else { return }
        let touchLocation = touch.location(in: self)
        
        // Find the touched red node
        let touchedNodes = nodes(at: touchLocation)
        let redNodes = touchedNodes.compactMap { $0 as? SKSpriteNode }.filter { $0.color == .red }
        
        // Move the touched red node to the touch location
        if let redNode = redNodes.first(where: { $0.name == "redNode" }) {
             redNode.position = touchLocation
         }
        //        print("touchesMoved")
        //        guard let touch = touches.first else { return }
        //        let touchLocation = touch.location(in: self)
        //
        //        // Update the position of the mask node
        //        maskNode?.position = CGPoint(x: touchLocation.x - frame.midX, y: touchLocation.y - frame.midY)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let blueNodesFrame = blueNodes.reduce(CGRect.null) { (result, blueNode) in
            let blueNodeFrame = blueNode.calculateAccumulatedFrame()
            return result.union(blueNodeFrame)
        }

//        let blueNodeFrame = blueNode.calculateAccumulatedFrame()

        let allRedNodesOutside = redNodes.allSatisfy { redNode in
            let redNodeFrame = redNode.calculateAccumulatedFrame()
            return !redNodeFrame.intersects(blueNodesFrame)
        }

        if allRedNodesOutside && redNodes.count > 0 {
            print("All red nodes are fully outside the blue node's frame.")
        } else {
            print("Not all red nodes are fully outside the blue node's frame.")
        }
        
        //        if let maskNode = maskNode, let bottomImageNode = bottomImageNode {
        //            let maskFrame = maskNode.calculateAccumulatedFrame()
        //            let bottomImageFrame = bottomImageNode.calculateAccumulatedFrame()
        //
        //            if !maskFrame.intersects(bottomImageFrame) {
        //                print("Mask node is fully outside the bottom image position")
        //            }
        //        }
    }
    
}



