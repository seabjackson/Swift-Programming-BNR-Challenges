//
//  main.swift
//  CyclicalAssets
//
//  Created by lily on 3/15/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

import Foundation

var bob: Person? = Person(name: "Bob")
print("created \(bob)")

var laptop: Asset? = Asset(name: "Shiny Laptop", value: 1500.0)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 175.0)
var backpack: Asset? = Asset(name: "Blue Backpack", value: 45.0)

bob?.takeOwnershipOfAsset(laptop!)
bob?.takeOwnershipOfAsset(hat!)

print("the bob variable is now \(bob)")
bob = nil
print("the bob variable is now \(bob)")
print("After  Bob is deallocated, hat's owner is \(hat!.owner)")

laptop = nil
hat = nil
backpack = nil



