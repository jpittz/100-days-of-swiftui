import Cocoa

// Day 15: Consolidation I, Swift review

// Creating constants & variables

var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

// Strings

let actor = "Tom Cruise 🛩️"

let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple Engineer
"""

print(actor.count)

print(quote.hasPrefix("He")) // true
print(quote.hasSuffix("Away.")) // false


// Integers

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1_000)

// Decimals

let newScore = 3.0

// Bool

let goodDogs = true
let gameOver = false
var isSaved = false
isSaved.toggle() // flips boolean

// Joining strings

let name2 = "Taylor"
let age = 26
let message = "I'm \(name2) and I'm \(age) years old."

// Arrays

var colours = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(readings[2])

colours.append("Violet")
colours.remove(at: 0)
print(colours.count)

print(colours.contains("Octarine"))

// Dictionaries

let employee = [
    "name": "James",
    "job": "F1 Team Principle"
]

print(employee["job", default: "Unemployed"])

// Sets: similar to arrays but can't hold duplicates and are unordered

var numberSet = Set([1, 1, 3, 5, 7, 9])
print(numberSet) // ignore the duplicate of '1' in random order

numberSet.insert(10) // don't append, as thiere is no order to append to
numbers.contains(11)

// Enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

// Type annotations

var score2: Double = 0

let player: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: [String] = ["Red", "Fearless"]
var users: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

// Conditions

if age < 12 {
    print("You can't vote.")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// && = and, || = or

// Switch statements

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It's a nice day")
case .rain:
    print("Pack an umbrella")
default:
    print("Should be okay.")
}

// Ternary conditional operator

let age2 = 18
let canVote = age2 >= 18 ? "Yes" : "No"
print(canVote)

// Loops

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

var count = 3

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "README.md", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(file)")
}

// Functions

func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 8)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// Tuples: returning multiple values from functions
        // return (tuple                              )
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user2 = getUser()
print("Name: \(user2.firstName) \(user2.lastName)")

let (firstname, _) = getUser()
print("Name: \(firstname)")

// Custom parameter labels

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result2 = isUppercase(string)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

// Default values for parameters

func greet (_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")

// Error handling in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

do {
    let result = try checkPassword("12345")
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// Closures

let sayHello = { (name: String) -> String in
    return ("Hi there, \(name)!")
}

print(sayHello("James"))

let team = ["Tracer", "Reaper", "JQ"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT)

// Trailing closures and shorthand syntax

// Only T can be re-written as:

let only_T = team.filter { $0.hasPrefix("T") }
print(only_T)

// Structs

struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
    
    mutating func removeFromSale() {
        isReleased = false
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")

print(red.title)
red.printSummary()

// Computed property

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

// Property observers

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

// will set, before
// did set, after

// Custom initialisers

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

// Access control: Private, Private Set, File Private & Public

// Classes

class Employee2 {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee2 {
    func work() {
        print("I'm coding for \(hours) hours a day.")
    }
}

let novall = Developer(hours: 8)

novall.work()
novall.printSummary()

// you can also use override func to override a func in the parent class

class Site {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created")
    }
    
    deinit {
        print("Site \(id): I've been destroyed")
    }
}

for i in 1...3 {
    let site = Site(id: i)
    print("Site \(site.id): I'm in control!")
}

// Protocols

protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
}

// Extensions

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
}

var helloWorld = "   hello world   "
helloWorld.trim()

// Optionals

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

// Nil coalescing

let tvShows = ["Stranger Things", "Drive to Survive"]
let favourite = tvShows.randomElement() ?? "None"

let input = ""
let number3 = Int(input) ?? 0
print(number3)
