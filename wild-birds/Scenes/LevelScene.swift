//
//  LevelScene.swift
//  wild-birds
//
//  Created by Roger Perez on 10/21/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit

class LevelScene: SKScene {
    
    var sceneManagerDelegate: SceneManagerDelegate?
    
    override func didMove(to view: SKView) {
        setupLevelSelection()
    }
    
    func setupLevelSelection() {
        var level = 1
        let columnStartingPoint = frame.midX/2 // first quarter of my scene
        let rowStartingPoint = frame.midY + frame.midY/2 // 3/4 of height of scene
        // put starting point upper left corner of scene  --^
        for row in 0..<3 {
            for column in 0..<3 {
                let levelBoxButton = SpriteKitButton(defaultButtonImage: "woodButton", action: goToGameSceneFor, index: level)
                // places columns in starting points for buttons. 1/4,1/2, 3/4 of scene
                levelBoxButton.position = CGPoint(x: columnStartingPoint + CGFloat(column) * columnStartingPoint, y: rowStartingPoint - CGFloat(row) * frame.midY/2)
                levelBoxButton.zPosition = ZPosition.hudBackground
                addChild(levelBoxButton)
                
                let levelLabel = SKLabelNode(fontNamed: "AvenirNext-Bold")
                levelLabel.fontSize = 200.0 // better to scale down rather than up.
                levelLabel.verticalAlignmentMode = .center // Make sure lavel is center in the box
                levelLabel.text = "\(level)"
                levelLabel.aspectScale(to: levelBoxButton.size, width: false, multiplier: 0.5) // scales label to half of box
                levelLabel.zPosition = ZPosition.hudLabel
                levelBoxButton.addChild(levelLabel)
                
                levelBoxButton.aspectScale(to: frame.size, width: false, multiplier: 0.2)
                
                level += 1
            }
        }
    }
    
    func goToGameSceneFor(level: Int) {
        sceneManagerDelegate?.presentGameSceneFor(level: level)
    }

}
