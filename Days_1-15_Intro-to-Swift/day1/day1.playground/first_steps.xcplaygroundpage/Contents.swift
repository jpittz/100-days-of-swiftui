import Cocoa

var greeting = "Hello, playground"

// Day 1: First steps in Swift

// initialising a variable
var name = "Brian"
name = "Graham"
name = "James"

// initialising a constant
let character = "Daphne"

var playerName = "Roy"
print(playerName)

// changing a variable
playerName = "Greg"
print(playerName)

playerName = "Rose"
print(playerName)

let managerName = "Michael Scott"
let dogBread = "Bichon"
let meaningOfLife = "How many roads must a man walk down?"

// multi-line string

let actor = "me"

let movie = """
A day in
the life of an
Apple engineer
"""

// .count gets len of string
print(actor.count)

// .uppercased() converts string to upper cased letters
print(movie.uppercased())

// checks string for pre/suffix
print(movie.hasPrefix("A day"))
print(movie.hasPrefix("coffee"))
print(movie.hasSuffix("ineer"))

// integers

let score = 10

// underscores are ignored, but help to read long numbers
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 5
let doubleScore = score * 2
let scoreSquared = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))

// decimals

let num = 0.1 + 0.2
print(num)

let a = 1
let b = 2.0
let c = Double(a) + b

let double1 = 3.1415

var rating = 5.0
rating *= 2
