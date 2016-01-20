//
//  main.swift
//  MonsterTown
//
//  Created by lily on 1/20/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//


import Foundation

var myTown = Town()
myTown.changePopulation(-500)
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



