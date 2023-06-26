//
//  SpriteComponent.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/27/23.
//


import GameplayKit
import SpriteKit

class SpriteComponent : GKComponent {
    
    let sprite : SKSpriteNode
    var currentZPosition : CGFloat = 0
    
    init( name : String  ) {
        self.sprite = SKSpriteNode(imageNamed: name)
        super.init()
    }
    
    override func didAddToEntity() {
        self.sprite.entity = self.entity
        self.currentZPosition = self.sprite.zPosition
    }
    
    override func willRemoveFromEntity() {
        self.sprite.removeFromParent()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implmented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        guard let hasPositionComponent = entity?.component(ofType: PositionComponent.self) else {
            return
        }
        self.sprite.position = hasPositionComponent.currentPosition
        
        if let hasRotation = entity?.component(ofType: RotationComponent.self) {
            self.sprite.zRotation = hasRotation.currentRotation
        }
        
        if let hasScale = entity?.component(ofType: ScaleComponent.self), hasScale.currentScale != hasScale.targetScale {
            if hasScale.currentTime > 0 {
                hasScale.currentTime -= seconds
                let factor = CGFloat((hasScale.duration - hasScale.currentTime) / hasScale.duration)
                hasScale.currentScale = hasScale.originalScale + (hasScale.difference * factor)
                self.sprite.setScale(hasScale.currentScale)
            } else {
                hasScale.currentScale = hasScale.targetScale
                self.sprite.setScale(hasScale.currentScale)
            }
        }
    }
}
