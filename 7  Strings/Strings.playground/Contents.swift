//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hello, playground"


let fromStart = playground.startIndex
let toPosition = 4
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end]
let range = fromStart...end
let firstFive = playground[range]

// scalar.value gives the unsigned integer value of the unicode scalar

var unicodeScalar = ""
var hexUnicodeScalar = ""

for scalar in firstFive.unicodeScalars {
    // convert the unsigned int to a hex
    
    
    //    init<T : UnsignedIntegerType>(_: T, radix: Int, uppercase: Bool)
    //    Create an instance representing v in the given radix (base).
    //
    //    Declaration
    //    init<T : UnsignedIntegerType>(_ v: T, radix radix: Int, uppercase uppercase: Bool = default)
    //    Discussion
    //    Numerals greater than 9 are represented as roman letters, starting with a if uppercase is false or A otherwise.
    var hexValue = String(scalar.value, radix: 16)
    
    
    
    if hexValue.characters.count == 2 {
        unicodeScalar = "00\(hexValue)"
    }
    else if (hexValue.characters.count == 3) {
        unicodeScalar = "0\(hexValue)"
    }
    
    hexUnicodeScalar += "\(unicodeScalar) "
    
}
print(hexUnicodeScalar)
// we can now use these values inside unicode scalars
let greeting = "\u{0048}\u{0065}\u{006c}\u{006c}\u{006f}"
  
print("\(greeting) folks")

