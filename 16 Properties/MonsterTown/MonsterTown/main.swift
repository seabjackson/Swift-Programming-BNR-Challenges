//
//  main.swift
//  MonsterTown
//
//  Created by lily on 1/20/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//
// 


import Foundation

var myTown = Town()
let ts = myTown.townSize
print(ts)

myTown.changePopulation(1000000)
print("Size: \(myTown.townSize): \(myTown.population)")
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)
fredTheZombie.town?.printTownDescription()
let bladeTheVampire = Vampire()
bladeTheVampire.town = myTown
bladeTheVampire.terrorizeTown()
bladeTheVampire.terrorizeTown()
bladeTheVampire.town?.printTownDescription()

// computed properties using a getter and a setter
print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie.terrorizeTown()
