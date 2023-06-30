//
//  RotationComponent.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/27/23.
//

import Foundation
import GameplayKit


class RotationComponent : GKComponent {
    
    var currentRotation : CGFloat
    
    
    init( currentRotation : CGFloat ) {
        self.currentRotation = currentRotation
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implmented")
    }
}
