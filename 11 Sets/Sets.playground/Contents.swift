//: Playground - noun: a place where people can play

import Cocoa

// Bronze Challenge

// Consider the following code that models the cities that two people have visited
// as sets. Find a method on Set that returns a Bool indicating whether or not myCities contains
// all of the cities contained by yourCities.

let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])

let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

let contains = myCities.isSupersetOf(yourCities)

// Silver Challenge
// Modify the existing instances in place. Look through the documentation
// and find the appropriate methods on the Set type. Rework the examples in the
// chapter for union(_:) and intersect(_:) to use these methods

var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

for food in groceryBag {
    print(food)
}

let hasBananas = groceryBag.contains("Bananas")
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
groceryBag.unionInPlace(friendsGroceryBag)


var roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
roommatesGroceryBag.intersectInPlace(groceryBag)


let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjointWith(roommatesSecondBag)