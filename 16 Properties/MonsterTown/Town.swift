//
//  Town.swift
//  MonsterTown
//
//  Created by lily on 1/20/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    // Town type should have an instance of the Mayor type
    let mayor = Mayor()
    
    var population = 5422 {
        didSet(oldPopulation) {
            if population < oldPopulation {
                // print("The population has changed to \(population) from \(oldPopulation).")
                mayor.amOnIt()
            }
            

        }
    }
    
    
    var numberOfStoplights = 4
    

    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                return Size.Small
                
            case 10001...100000:
                return Size.Medium
                
            default:
                return Size.Large
            }
        }
    }
    
    func printTownDescription() {
        print("Population: \(population), number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}