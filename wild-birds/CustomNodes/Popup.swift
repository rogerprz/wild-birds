//
//  Popup.swift
//  wild-birds
//
//  Created by Roger Perez on 10/26/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit

class Popup: SKSpriteNode {
    
    let type: Int
    
    init(type: Int, size: CGSize) {
        self.type = type
        super.init(texture: nil, color: UIColor.clear, size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
