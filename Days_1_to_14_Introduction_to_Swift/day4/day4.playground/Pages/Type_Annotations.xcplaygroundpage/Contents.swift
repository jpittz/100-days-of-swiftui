import Cocoa

// type annotations

// swift automatically detect what data type to use when creating a variable, eg using:

let firstname = "Apple"

// instead of

let surname: String = "Tim"


// however, there are instances where this is useful such as:

var score: Double = 0 // Swift would have inferred this to be a string, not a decimal

// type annotations for different data structures

var song: String = "Hello" // var/const
var albums: [String] = ["Red", "Fearless"] // array
var user: [String: String] = ["id": "@twostraws"] // dict
var books: Set<String> = Set([
    "The Lightning Thief",
    "Sea of Monsters"
])  // set

// multiple ways of making an empty array of strings

var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

// enums

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark // UIStyle not needed as style was assigned this enum on the previous line

// a good use of type annotations is declaring a const without a value

let username: String
username = "@twostraws"

// rule: Swift MUST know at all times the type of all your data

