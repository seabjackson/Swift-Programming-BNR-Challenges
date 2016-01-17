//: Playground - noun: a place where people can play

import Cocoa

// Bronze Challenge
// Refactor the greetByMiddleName(_:) function to have a where clause in its guard statement
// the where clause should check to see if the middle name is fewer than 4 characters

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle where middleName.characters.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(("Seab", "Cap" , "Jackson"))

// Silver Challenge
// Write a function called beanSifter(_:) that takes a grocery list (as an array of strings)
// and "sifts out" the beans from the other groceries. The function should take one argument that
// is an external parameter name called groceryList, and shuld return a named tuple of the
// type (beans: [String], otherGroceries: [String])

func beanSifter(groceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for grocery in list {
        if grocery.hasSuffix("beans") {
            beans.append(grocery)
        } else {
            otherGroceries.append(grocery)
        }
    }
    return (beans, otherGroceries)
}
let result = beanSifter(groceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
print(result.beans)
print(result.otherGroceries)
