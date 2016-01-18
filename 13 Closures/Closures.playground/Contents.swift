

// SKIP TO THE PART ABOUT FUNCTIONAL PROGRAMMING AND HIGHER ORDER FUNCTIONSTO SEE THE SOLUTIONS
// Clean up the implementation of reduce(_:combine) The implementation can be shortened
// quite significantly: your solution should be expressed in one line. Take a look at the sample
// code for the other higher-order functions and practice with them



import Cocoa


var volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]


let volunteerSorted = volunteerCounts.sort { $0 < $1 }
volunteerSorted

// functions as return types
func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
            return toLights + lightsToAdd
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}

var stoplights = 4

if let townPlan = makeTownGrand(1000, condition: evaluateBudget) {
    stoplights = townPlan(4, stoplights)
}
if let newTownPlan = makeTownGrand(10500, condition: evaluateBudget) {
    stoplights = newTownPlan(4, stoplights)
}

print("Knowhere has \(stoplights) stoplights.")

func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}
var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)
growBy500()
growBy500()
growBy500()
currentPopulation += growBy500()
let anotherGrowBy500 = growBy500
anotherGrowBy500() // totalGrowth now equals 2500
var someOtherPopulation = 4061981
let growthBy10000 = makeGrowthTracker(forGrowth: 10000)
someOtherPopulation += growthBy10000()
currentPopulation

// functional programming and higher order functions

let precinctPopulations = [1244, 2021, 2157]

// map
//let projectedPopulations = precinctPopulations.map {
//    (population: Int) -> Int in
//    return population * 2
//}
//projectedPopulations

// more succinct use of closure syntax in the implementation of map()
let projectedPopulations = precinctPopulations.map {$0 * 2}
projectedPopulations

// filter
//let bigProjections = projectedPopulations.filter {
//    (projection: Int) -> Bool in
//    return projection > 4000
//}
//bigProjections

// more succinct use of closure syntax in the implementation of filter()
let bigProjections = projectedPopulations.filter {$0 > 4000}
bigProjections

// reduce(_:combine)
//let totalProjection = projectedPopulations.reduce(0) {
//    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
//    return accumulatedProjection + precinctProjection
//}
//totalProjection

// more succint use of closure syntax in the implementation of reduce(_:combine)
let totalProjection = projectedPopulations.reduce(0) {$0 + $1}
totalProjection










