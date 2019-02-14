//
//  BattleModel.swift
//  alphabattle
//
//  Created by Timothy Ludi on 2/13/19.
//  Copyright © 2019 Timothy Ludi. All rights reserved.
//

import Foundation

class BaseBattle {
    class func battle20() -> Int {
        let d20 = Array(1...20)
        return d20.randomElement()!
    }

    
}
