//
//  GameScene.swift
//  wild-birds
//
//  Created by Roger Perez on 8/24/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let gameCamera = SKCameraNode()
    
    override func didMove(to view: SKView) {
        addCamera()
    }
    
    func addCamera(){
        guard let view = view else { return }
        addChild(gameCamera)
        gameCamera.position = CGPoint(x: view.bounds.size.width/2, y: view.bounds.size.height/2)
        
        camera = gameCamera
    }
}
