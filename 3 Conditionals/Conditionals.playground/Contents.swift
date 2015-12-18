//: Playground - noun: a place where people can play

import Cocoa

var population: Int = 75000
var message: String
var hasPostOffice: Bool = false

if population < 10000 {
    message = "\(population) is a small town"
} else if population >= 10000 && population < 50000 {
        message = "\(population) is a medium town."
} else if population >= 50000 && population < 100000 {
        message = "\(population) is very large"
} else {
    message = "\(population) is crazy large"
}

print(message)

if !hasPostOffice {
    print("Where do we buy stamps?")
}
