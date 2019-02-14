//
//  Models.swift
//  alphabattle
//
//  Created by Timothy Ludi on 2/13/19.
//  Copyright © 2019 Timothy Ludi. All rights reserved.
//

import Foundation
import RealmSwift

class Arena: Object {
    @objc dynamic var id: String = "defaultID"
    @objc dynamic var arenaName: String = " "
    @objc dynamic var arenaText: String = " "
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    let arenaOptions = List<ArenaOption>()
}

struct ArenaStruct: Codable {
    let id: String
    let arenaName: String
    let arenaText: String
}

class ArenaOption: Object {
    @objc dynamic var id: String = "defaultID"
    @objc dynamic var originalArena: String = " "
    @objc dynamic var destinationArena: String = " "
    @objc dynamic var optionLabel: String = " "
    @objc dynamic var optionText: String = " "
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    let homeArena = LinkingObjects(fromType: Arena.self, property: "arenaOptions")
    
}
