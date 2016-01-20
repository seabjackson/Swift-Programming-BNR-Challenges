//
//  Town.swift
//  MonsterTown
//
//  Created by lily on 1/20/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    
    func printTownDescription() {
        print("Population: \(population), number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}