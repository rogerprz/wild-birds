//
//  SKNode+Extensions.swift
//  wild-birds
//
//  Created by Roger Perez on 10/21/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit

extension SKNode {
    
    func aspectScale(to size: CGSize, width: Bool, multiplier: CGFloat) {
        let scale = width ? (size.width * multiplier) / self.frame.size.width : (size.height * multiplier) / self.frame.size.height
        self.setScale(scale)
    }
}
