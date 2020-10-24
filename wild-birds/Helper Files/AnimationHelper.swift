//
//  AnimationHelper.swift
//  wild-birds
//
//  Created by Roger Perez on 10/24/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit

class AnimationHelper {
    static func loadTextures(from atlas: SKTextureAtlas, withName name: String) -> [SKTexture] {
        var textures = [SKTexture]()
        
        for index in 0..<atlas.textureNames.count {
            let textureName = name + String(index+1)
            textures.append(atlas.textureNamed(textureName))
        }
        
        return textures
    }
    
}
