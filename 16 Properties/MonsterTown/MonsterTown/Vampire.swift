//
//  Vampire.swift
//  MonsterTown
//
//  Created by lily on 1/21/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//
// Silver Challenge
// Create another sub class of the Monster type. Call this one Vampire. Override the terrorizeTown() function so that every time
// an instance of the Vampire type terrorizes a town it adds a new vampire thrall to an array of vampires on the Vampire type.
// This array of vampire thralls should be empty by default. Terrorizing a town should also decrement the town's population by one.
// Last exercise this Vampire type in main.swift

import Foundation

class Vampire: Monster {
    var vampires = [Vampire]()
    
    
    final override func terrorizeTown() {
        let vampire = Vampire()
        vampires.append(vampire)
        town?.changePopulation(-1)
        
    }
}
