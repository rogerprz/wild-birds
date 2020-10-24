//
//  LevelData.swift
//  wild-birds
//
//  Created by Roger Perez on 10/24/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import Foundation

// initializes the plist of birds and saves it to birds array
struct LevelData {
    let birds: [String]
    
    init?(level:Int) {
        guard let levelDictionary = Levels.levelsDictionary["Level_\(level)"] as? [String:Any] else {
            return nil
        }
        guard let birds = levelDictionary["Birds"] as? [String] else {
            return nil
        }
        self.birds = birds
    }
}
