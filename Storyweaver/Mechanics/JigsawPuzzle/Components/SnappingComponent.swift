//
//  SnappingComponent.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/27/23.
//

import GameplayKit
import SpriteKit

class SnappingComponent : GKComponent {
    
    let positionTolerance : CGFloat = 100
    let rotationTolerance : CGFloat = 20
    
    override func update(deltaTime seconds: TimeInterval) {
        guard let positionComponent = entity?.component(ofType: PositionComponent.self) else { return }
        guard let interactionComponent = entity?.component(ofType: InteractionComponent.self), interactionComponent.state == .none else { return }
        let vector = positionComponent.currentPosition - positionComponent.targetPosition
        let hyp = sqrt(( vector.x * vector.x ) + (vector.y * vector.y))
        var shouldSnap = true
        if hyp > self.positionTolerance {
            shouldSnap = false
        }
        if let hasRotation = entity?.component(ofType: RotationComponent.self) {
            let inDegrees = abs(hasRotation.currentRotation.toDegrees())
            if inDegrees > rotationTolerance && inDegrees < (360 - rotationTolerance)  {
                shouldSnap = false
            }
        }
        
        if shouldSnap {
            positionComponent.currentPosition = positionComponent.targetPosition
            entity?.component(ofType: RotationComponent.self)?.currentRotation = 0
            entity?.component(ofType: SpriteComponent.self)?.sprite.zPosition = 1
        }
    }
}
