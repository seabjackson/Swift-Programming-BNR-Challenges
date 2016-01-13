//: Playground - noun: a place where people can play

import Cocoa

// It is not uncommon yo place instances of the Array type inside of a dictionary
// Create a dictionary that represents a state. Your dictionary's keys will refer to counties
// (to keep it short, only include three counties). Each key should map onto an array that holds
// five of the zip codes within that county. (You can make up the county names and zip codes.)

// Finally log only the dictionary's zip codes. Your result should look something like this:
// Georgia has the following zip codes: [30306, 30307, 30308, 30309, 30310]

let county = ["Brooklyn" : [11212, 11233, 12233, 11256, 12321],
              "China Town" : [100, 101, 113, 120, 30013],
              "Albany" : [7, 13, 1002, 13468, 87875]
]
let zipcodes = Array(county.values.flatten())
print("New York has the following zip codes: \(zipcodes)")
