//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// switch statements

enum Weather {
    case sun, rain, wind, snow, unkown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm.")
case .snow:
    print("School is cancelled.")
case .unkown:
    print("Our forecast generator is broken!")
}

let place = "Greenwich"

// a default case can be used in the event none of the cases are used. Since Swift goes through each case one by one and stops after finding one, default should always be last, otherwise none of the cases will run...

switch place {
case "Gotham":
    print("You're Batman!")
case "Death Star":
    print("You're Vader!")
default:
    print("Who are you?")
}

// ...unless using a fallthrough

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
