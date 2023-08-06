//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// ternary conditional operator


/*
 first up, WHY???
 
 Ternary operators help condense an if else statement

 To remember use WTF:
 
 What? True False
 
 They also allow us to use them within print statements,
 which can't be done using a normal if statement
 */

// 2 + 5 is binary, two pieces of input
// ternary operator has two parts

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
//              What?     True    False

// the above is similar to an if else statement. If age >= 18, canVote is assigned "Yes". Else, it is assigned "No".



let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Joyce", "Ally", "Rosie"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)
