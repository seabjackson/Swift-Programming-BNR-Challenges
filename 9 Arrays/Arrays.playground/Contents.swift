//: Playground - noun: a place where people can play

import Cocoa

// BRONZE CHALLENGE
// TO DO
// Look at the documentation to locate a var defined on the Arrary type that will
// tell you whether the array has eny elements inside of it.

var toDoList = ["Take out garbage", "Pay bills", "Cross of finished items"]
toDoList.count // if count greater than 0 you know the array is not empty
toDoList.isEmpty // if this returns true the array has no elements inside it

// SILVER CHALLENGE
// Use the array from the bronze challenge and use a loop to reverse the order of the elements in the
// array. Log the results to the console. Finally examine the documentation to see if there is a more
// convenient way to do this operation.

// most convenient way to do this per the documentation is to use reverse method at the bottom

toDoList // list what is currently in the array

// get a copy of the toDoList array
var copy = toDoList

// create a counter variable to count downwards
var counter = toDoList.count

for item in 0..<toDoList.count {
    // not the array is 0 index so we start countinf backwards from counter - 1
    toDoList[item] = copy[counter - 1]
    counter--
}
toDoList // the array is successfully reversed

// to reverse this array so as to get it back in its original order we can use the reverse method
toDoList = toDoList.reverse()
toDoList // array reverted to original order


