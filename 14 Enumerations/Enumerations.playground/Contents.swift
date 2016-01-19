//: Bronze Challenge
// Add a perimeter() method to the ShapeDimensions enum. This method should compute the perimeter of a 
// shape(the sum of the length of all its edges). Make sure you handle all the cases

// Silver Challenge
// Add another case to the ShapeDimensions enum for a right triangle. You can ignore the orientation
// of the triangle. Just keep track of the length of its three sides. Adding a new case will cause
// your playground to give an error in the area() method. Fix the error.

import Cocoa

enum TextAlignment: Int {
    case Left = 20
    case Right = 30
    case Center = 40
    case Justify = 50
}

var alignment = TextAlignment.Justify
print("Left has raw value \(TextAlignment.Left.rawValue)")
print("Right has raw value \(TextAlignment.Right.rawValue)")
print("center has raw value \(TextAlignment.Center.rawValue)")
print("Justify has raw value \(TextAlignment.Justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

// Create a raw value
let myRawValue = 208

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // conversion succeeded
    print("Successfully converted \(myRawValue) into a TextAlignment")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

switch alignment {
case .Left:
    print("left aligned")
case .Right:
    print("right aligned")
case .Center:
    print("center aligned")
case .Justify:
    print("justified")
}

enum ProgrammingLanguage: String {
    case Swift
    case Objective = "Objective-C"
    case C
    case Cpp = "C++"
    case Java
}

let myFavoriteLanguage = ProgrammingLanguage.Swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

enum Lightbulb {
    case On
    case Off
    
    func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150.0
        
        case .Off:
        return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
            
        case .Off:
            self = .On
        }
    }
}

var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")

// associated values

enum ShapeDimensions {
    // Point has no associated value -it is dimensionless
    case Point
    
    // Square's associated value is the length of one side
    case Square(Double)
    
    // Rectangule's associated value defines its width and height
    case Rectangle(width: Double, height: Double)
    
    case RightTriangle(opp: Double, adj: Double, hyp: Double)
    
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
            
        case let .Square(side):
            return side * side
            
        case let .Rectangle(width: w, height: h):
            return w * h
            
        case let .RightTriangle(opp: o, adj: a, hyp: _):
            return 0.5 * a * o
        }
    }
    
    func perimeter() -> Double {
        switch self {
        case .Point:
            return 0
            
        case let .Square(side):
            return 4 * side
            
        case let .Rectangle(width: w, height: h):
            return 2 * w + 2 * h
            
        case let .RightTriangle(opp: o, adj: a, hyp: hyp):
            return o + a + hyp
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point
// add the right triangle shape
var triangleShape = ShapeDimensions.RightTriangle(opp: 3.0, adj: 4.0, hyp: 5.0)

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
print("right triangle's area = \(triangleShape.area())")

// print the perimeter of each shape
print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's perimeter = \(rectShape.perimeter())")
print("point's perimeter = \(pointShape.perimeter())")
print("right triangle's perimeter = \(triangleShape.perimeter())")

// must use indirect since Family Tree is recursive. compiler doesn't know
// how much memory is required to store this enum. indirect stores the enum's data behind a pointer
enum FamilyTree {
    case NoKnownParents
    indirect case OneKnownParent(name: String, ancestors: FamilyTree)
    indirect case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.TwoKnownParents(fatherName: "Fred Sr.", fatherAncestors: .OneKnownParent(name: "Beth", ancestors: .NoKnownParents), motherName: "Marsha", motherAncestors: .NoKnownParents)



























