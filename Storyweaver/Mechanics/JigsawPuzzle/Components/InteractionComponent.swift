//
//  InteractionComponent.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/27/23.
//

import GameplayKit
import SpriteKit
enum Action : Equatable   {
    case none
    case move(ActionState, CGPoint?)
    case rotate(ActionState, CGFloat)
}
enum ActionState : Equatable {
    case began
    case changed
    case ended
}
class InteractionComponent : GKComponent {
    var didBegin : Bool = false
    var state : Action = .none {
        didSet {
            switch state {
            case .move(let actionState, _), .rotate(let actionState, _):
                if actionState == .began {
                    self.didBegin = true
                }
            default:
                break
            }
        }
    }
    var offset : CGPoint = .zero
    var rotationOffset : CGFloat = 0
    
    override func update(deltaTime seconds: TimeInterval) {
        switch state {
        case .none:
            break
        case .move(let state, let point):
            self.handleMove(state: state, point: point)
        case .rotate(let state, let rotation):
            self.handleRotation(state: state, rotation: rotation)
        }
    }
    
    func handleMove( state : ActionState, point : CGPoint? ) {
        guard let positionComponent = entity?.component(ofType: PositionComponent.self) else {
            return
        }
        if self.didBegin {
            if let hasPoint = point {
                offset = positionComponent.currentPosition - hasPoint
            }
            entity?.component(ofType: ScaleComponent.self)?.targetScale = 1.2
            entity?.component(ofType: SpriteComponent.self)?.sprite.zPosition = 1000
            self.didBegin = false
        }
        
        if let hasPoint = point {
            positionComponent.currentPosition = hasPoint + offset
        }
        switch state {
        case .ended:
            self.state = .none
            offset = .zero
            entity?.component(ofType: ScaleComponent.self)?.targetScale = 1
            if let hasSpriteComponent = entity?.component(ofType: SpriteComponent.self) {
                hasSpriteComponent.sprite.zPosition = hasSpriteComponent.currentZPosition
            }
        default:
            break
        }
    }
    
    func handleRotation( state : ActionState, rotation : CGFloat ) {
        guard let rotationComponent = entity?.component(ofType: RotationComponent.self) else {
            return
        }
        
        if self.didBegin {
            rotationOffset = rotationComponent.currentRotation - rotation
            self.didBegin = false
        }
        
        switch state {
        case .ended:
            self.state = .none
        default:
            rotationComponent.currentRotation = rotation + rotationOffset
        }
    }
}
