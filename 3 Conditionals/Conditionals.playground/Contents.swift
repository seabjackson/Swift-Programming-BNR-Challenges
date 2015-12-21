//: Playground - noun: a place where people can play

// Challenge 3
// Add an additional else if statement to the town sizing code to see if your town's population is very large/ Choose your own population thresholds. Set the message variable accordingly.
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
