//
//  PositionComponent.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/27/23.
//

import Foundation
import GameplayKit

class PositionComponent : GKComponent {
    
    var currentPosition : CGPoint
    let targetPosition : CGPoint
    
    init( currentPosition : CGPoint, targetPosition : CGPoint ) {
        self.currentPosition = currentPosition
        self.targetPosition = targetPosition
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implmented")
    }
}
