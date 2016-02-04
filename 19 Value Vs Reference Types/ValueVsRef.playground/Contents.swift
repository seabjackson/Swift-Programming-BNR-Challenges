//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
str

class GeekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GeekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

struct Pantheon {
    let chiefGod: GeekGod
    let dateCreated = NSDate()

}
let pantheon = Pantheon(chiefGod: hecate)
let zeus = GeekGod(name: "Zeus")
zeus.name = "Zeus Jr."
zeus.name

pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name
greekPantheon.dateCreated

// Copying
let athena = GeekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = godl
gods.last?.name = "Jupiter"
gods
godsCopy