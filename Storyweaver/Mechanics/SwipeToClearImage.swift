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
    
    var topImageNode: SKSpriteNode!
    var bottomImageNode: SKSpriteNode!
    var maskNode: SKCropNode?
    
    override func didMove(to view: SKView) {
        // Create and position the bottom image node
        bottomImageNode = SKSpriteNode(imageNamed: "testBlue")
        bottomImageNode.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(bottomImageNode)
        
        // Create and position the top image node
        topImageNode = SKSpriteNode(imageNamed: "testRed")
        topImageNode.position = CGPoint(x: frame.midX, y: frame.midY)
        
        // Create a crop node for masking
        maskNode = SKCropNode()
        
        // Add the bottom image node as the mask node's mask
        maskNode?.maskNode = bottomImageNode
        
        // Add the top image node as a child of the crop node
        maskNode?.addChild(topImageNode)
        
        // Add the crop node as a child of the scene
        addChild(maskNode!)
        
        // Enable user interaction
        isUserInteractionEnabled = true
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesMoved")
        guard let touch = touches.first else { return }
        let touchLocation = touch.location(in: self)
        
        // Update the position of the mask node
        maskNode?.position = CGPoint(x: touchLocation.x - frame.midX, y: touchLocation.y - frame.midY)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let maskNode = maskNode, let bottomImageNode = bottomImageNode {
            let maskFrame = maskNode.calculateAccumulatedFrame()
            let bottomImageFrame = bottomImageNode.calculateAccumulatedFrame()
            
            if !maskFrame.intersects(bottomImageFrame) {
                print("Mask node is fully outside the bottom image position")
            }
        }
    }
    
}



