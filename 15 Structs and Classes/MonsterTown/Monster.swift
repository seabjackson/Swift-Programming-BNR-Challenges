//
//  Monster.swift
//  MonsterTown
//
//  Created by lily on 1/20/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}