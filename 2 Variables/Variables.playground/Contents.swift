//: Playground - noun: a place where people can play

import Cocoa

let numberOfStoplights: Int = 4
var population: Int
population = 5422
let townName: String = "Knowhere"
var townDescription = "\(townName) has a population of \(population) and \(numberOfStoplights) stoplights."
print(townDescription)

// unemployment can change so we use var instead of a constant

var unemployment: Int = 5
townDescription += " It has an unemployment rate of \(unemployment) %."
print(townDescription)

