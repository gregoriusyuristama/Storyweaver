//
//  CGFloat+rotation.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/27/23.
//

import SpriteKit

extension CGFloat {
    
    func toDegrees() -> CGFloat {
        return ( self / CGFloat.pi ) * 180
    }
    
    func toRads() -> CGFloat {
        return ( self / 180 ) * CGFloat.pi
    }
    
}
