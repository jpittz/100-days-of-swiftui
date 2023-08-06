import Cocoa

// Checkpoint 4

/*
 Write a function that acceots an integer through 1 to 10,000
 and returns the sqrt of that number
 
  - You can't use the built-in sqrt() function
  - If number is less than 1 or greater than
    10,000 you should throw "out of bounds" error
  - Only consider integer square roots
  - If you can't find the sqrt throw a "no root" error
*/

enum SqrtError: Error {
    case outOfBounds, noRoot
}

func calculateRoot(_ number: Int) throws -> String {
    if number > 10_000 || number < 1 {
        throw SqrtError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return "\(i)" // can't return int
        }
    }
    throw SqrtError.noRoot // exhaustive, always throws or returns
}

do {
    let result = try calculateRoot(64)
    print("The root is \(result)")
} catch SqrtError.outOfBounds {
    print("Out of bounds")
} catch SqrtError.noRoot {
    print("No root")
}

