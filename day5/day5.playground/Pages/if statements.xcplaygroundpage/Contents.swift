import Cocoa

// if statements

let score = 85


// > is a comparison operator
if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

if friendName > ourName {
    print("It's \(ourName) vs \(friendName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

// == means 'is equal to'

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

// != means 'not equal to'

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}


var username = "taylorswift13"

if username == "" {
// or 'if username.count == 0'
// or the best solution 'if username.isEmpty'
    username = "Anonymous"
}


print("Welcome, \(username)")

// comparing enums

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

// That will print “true”, because small comes before large in the enum case list.

// checking multiple conditions

if age >= 18 {
    print("You can vote in the next election")
} else {
    print("Sorry, you're too young to vote")
}

// else statements can have an if condition written after on the same line

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

// can be re-written as

if temp > 20 && temp < 30 {
        print("It's a nice day.")
}

// && is and
// || is or

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

enum transportOption {
    case RS6, SVR, FiestaST, Bicycle
}

let transport = transportOption.RS6

if transport == .RS6 || transport == .SVR {
    print("Windows down for the V8!")
} else if transport == .FiestaST {
    print("I hope that there are a lot of twisty roads!")
} else {
    print("I hope there is a bike path!")
}
