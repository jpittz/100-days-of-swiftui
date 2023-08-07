import Cocoa

// Day 2




// Boolean

let filename = "london.jpg"
print(filename.hasSuffix(".jpg"))

let goodDog = true
let gameOver = false

// ![var name] flips a boolean value
// [var name].toggle() also flips


var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

isAuthenticated = !isAuthenticated
print(isAuthenticated)

// Strings

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

// String interpolation

let name = "Jimbo"
let age = 52
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

/*
 String interpolation is far more effecient for
 including variables in strings, and also allows to
 concatenate a string with an int.
 */

let number = 11
let missionMessage = "Apollo \(number) landed on the moon!"

// Calculations can be carried out within an interpolation

print("5 x 5 is \(5*5)")





/* Checkpoint 1: Celsius to Fahrenheit.
 
 Goal is to write a Swift playground that:

 1. Creates a constant holding any temperature in Celsius.
 2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
 3. Prints the result for the user, showing both the Celsius and Fahrenheit values
*/

let temperatureCelsius = 19
let temperatureFarenheit = (19*9)/5 + 32
let temperatureMessage = "\(temperatureCelsius)°C is \(temperatureFarenheit)°F"
print(temperatureMessage)

