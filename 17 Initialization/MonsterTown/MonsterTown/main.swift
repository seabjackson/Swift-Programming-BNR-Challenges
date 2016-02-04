//
//  main.swift
//  MonsterTown
//
//  Created by lily on 1/20/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//
// 


import Foundation

var myTown = Town(region: "West", population: 0, stoplights: 6)
let ts = myTown?.townSize
print(ts)

myTown?.changePopulation(1000000)
print("Size: \(myTown?.townSize): \(myTown?.population)")
var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.changeName("Fred the Zombie", walksWithLimp: false)

var convenientZombie = Zombie(limp: true, fallingApart: false)
fredTheZombie?.town?.printTownDescription()
let bladeTheVampire = Vampire(town: myTown, monsterName: "Blade")
bladeTheVampire.terrorizeTown()
bladeTheVampire.terrorizeTown()
bladeTheVampire.town?.printTownDescription()

// computed properties using a getter and a setter
print("Victim pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil
