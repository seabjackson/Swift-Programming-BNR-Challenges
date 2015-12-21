//: Playground - noun: a place where people can play

import Cocoa

 // Challenge Use a loop to count by 2 from 0 to 100. Use another loop to make sure the first loop
// is run 5 times.

// use nested loops where the external loop runs 5 times
for _ in 0..<5 {
    // This inner loop uses the for case ... where to print just even numbers
    for case let i in 0...100 where i % 2 == 0 {
        print(i)
    }
}
