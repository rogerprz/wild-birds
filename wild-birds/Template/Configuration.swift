//
//  Configuration.swift
//  wild-birds
//
//  Created by Roger Perez on 8/31/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import CoreGraphics

extension CGPoint {
    
    static public func + (left: CGPoint, right: CGPoint) -> CGPoint{
        return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    static public func - (left: CGPoint, right: CGPoint) -> CGPoint{
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    static public func * (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x * right, y: left.y * right)
    }
    
}
