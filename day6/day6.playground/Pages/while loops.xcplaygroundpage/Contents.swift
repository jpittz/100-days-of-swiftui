import Cocoa

var greeting = "Hello, playground"

// while loops are used, but for loops are often better and more common

var countdown = 5

while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}

print("Blast off!")

// while loops are useful when you don't know how many times a loop will go around

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

// random ints are a good example

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")



