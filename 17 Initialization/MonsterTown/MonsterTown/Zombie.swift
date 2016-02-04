//
//  Zombie.swift
//  MonsterTown
//
//  Created by lily on 1/20/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//
// Bronze Challenge
// Fix the bug in the Zombie type. If an instance of Zombie terrorizes a town with a population of 0 then its population
// will decrement to  -10. Fix this bug by changing the terrorizeTown() function on the Zombie type to only decrement the town's
// population if its population is greater than 0. Also make sure that the town's population is set to 0 if the amount to decrement
// is greater than the current population

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    final override func terrorizeTown() {
        if !isFallingApart {
            decrementPopulation()
        }
        super.terrorizeTown()
    }
    
    

    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
    func decrementPopulation() {
        let amountToDecrement = -10
        if town?.population > 0 && town?.population > abs(amountToDecrement){
            town?.changePopulation(amountToDecrement)
        } else {
            town?.population = 0
        }
    }
}