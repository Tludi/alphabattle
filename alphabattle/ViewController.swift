//
//  ViewController.swift
//  alphabattle
//
//  Created by Timothy Ludi on 2/13/19.
//  Copyright © 2019 Timothy Ludi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var battleResultLabel: UILabel!
    
    @IBAction func battleButton(_ sender: Any) {
        let testBattle = BaseBattle.battle20()
        print(testBattle)
        battleResultLabel.text = String(testBattle)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scenes = DataManager.getDataFromFile()
        
        testLabel.text = scenes.first?.arenaName
        
        let testBattle = BaseBattle.battle20()
        print(testBattle)
        
    }


}

