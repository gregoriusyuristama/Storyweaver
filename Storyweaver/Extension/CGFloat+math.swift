//
//  CGFloat+math.swift
//  Storyweaver
//
//  Created by Gregorius Yuristama Nugraha on 6/27/23.
//

import Foundation

extension CGPoint {
    public static func - (lhs : CGPoint, rhs : CGPoint ) -> CGPoint {
        return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    public static func + (lhs : CGPoint, rhs : CGPoint ) -> CGPoint {
        return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }

}
