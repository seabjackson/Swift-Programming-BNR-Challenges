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
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        decrementPopulation()
        super.terrorizeTown()
    }

    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
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