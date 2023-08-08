import Cocoa

// structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

// structs should start with a capital, same as other types like Int, String

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let deathRaceForLove = Album(title: "Death Race for Love", artist: "Juice WRLD", year: 2019)

print(red.title)
print(deathRaceForLove.artist)

red.printSummary()
deathRaceForLove.printSummary()

struct Employee {
    // var and consts inside a struct are called 'properties'
    let name: String
    var vacationRemaining: Int
    
    // functions inside a struct are called methods
    mutating func takeVacation(days: Int) { //mutating as data in struct is may change within the function
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops, there aren't enough days remaining.")
        }
    }
}

/* The mutating function stops us using let and instead to use var,
   as a const can't have mutating data
 */

// when we create a consts or var from our struct is is called an 'instance'
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14) // initialiser
archer.takeVacation(days: 5)

// name must be specified as its a constant, vacationRemaining is optional



let a = 1
let b = 2.0
let c = Double(a) + b
