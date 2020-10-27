//
//  Enemy.swift
//  wild-birds
//
//  Created by Roger Perez on 10/26/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit

enum EnemyType: String {
    case orange
}

class Enemy: SKSpriteNode {
    
    let type: EnemyType
    var health: Int
    let animationFrames: [SKTexture]
    let damageThreshold: Int

    init(type: EnemyType) {
        self.type = type
        animationFrames = AnimationHelper.loadTextures(from: SKTextureAtlas(named: type.rawValue), withName: type.rawValue)
        switch type {
        case .orange:
            health = 100
        }
        damageThreshold = health/2
        
        let texture = SKTexture(imageNamed: type.rawValue + "1")
        super.init(texture: texture, color: UIColor.clear, size: CGSize.zero)
        animateEnemy()
    }
    
    func animateEnemy() {
        run(SKAction.repeatForever(SKAction.animate(with: animationFrames, timePerFrame: 0.3, resize: false, restore: true)))
    }
    
    func createPhysicsBody() {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.isDynamic = true // allows impact with bird node
        physicsBody?.categoryBitMask = PhysicsCategory.enemy //
        physicsBody?.contactTestBitMask = PhysicsCategory.all
        physicsBody?.collisionBitMask = PhysicsCategory.all
    }
    
    func impact(with force: Int) -> Bool{
        health -= force
        print(health)
        if health < 1 {
            removeFromParent()
            return true
        }
        return false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
}
