//
//  Mayor.swift
//  MonsterTown
//
//  Created by lily on 1/29/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//
// Silver Challenge
// Make a new type called Mayor. It should be a struct. The Town type should have a property called mayor that holds an instance 
// of the Mayor type. Have your toen inform the mayor every time the property for population changes. If the town's population decreases , have the instance of the Mayor log this statement to the console: " I'm deeply saddened...". If the population
// increases, the mayor should do nothing.

// Hint: You should define a new instance method on the Mayor type to complete this challenge.

import Foundation

struct Mayor {

    
    // Create a stored instance property on the Mayor type called anxietyLevel of type Int and default 0
    var anxietyLevel: Int = 0


    // have your town inform the mayor every time the property for population changes
    func amOnIt() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
}