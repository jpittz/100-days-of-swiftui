import Cocoa

var greeting = "Hello, playground"

// for loops

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// os is automatically initialised and assigned the values of each item in platforms
// os is the loop variable in this example

for os in platforms {
    print("Swift works great on \(os)")  // loop body
}

//       1 - 12      ... means a range, similar to for i in range(1-12)
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// nested for loop, a loop inside a loop

for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i)")
    }
    
    print()
}

// ..< is the same as ... but doesnt include the last number

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}
print()

for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

// _ can be used when you don't need a loop variable
for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
