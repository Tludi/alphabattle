//
//  DataManager.swift
//  alphabattle
//
//  Created by Timothy Ludi on 2/13/19.
//  Copyright © 2019 Timothy Ludi. All rights reserved.
//

import Foundation
import RealmSwift

class DataManager {
    class func getDataFromFile() -> [ArenaStruct] {
        var arenas:[ArenaStruct] = []
        let url = Bundle.main.url(forResource: "TestData", withExtension: "json")!
        do {
            let fileData = try Data(contentsOf: url)
            arenas = try JSONDecoder().decode([ArenaStruct].self, from: fileData)
            
            print(arenas.first!.arenaName)
        }
        catch {
            print(error)
        }
        
        return arenas
    }
}
