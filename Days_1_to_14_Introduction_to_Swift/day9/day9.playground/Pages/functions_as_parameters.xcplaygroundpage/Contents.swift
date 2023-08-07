import Cocoa

// how to accept functions as parameters

// passing generator into makeArray

// makeArray takes function as input, returns array of Ints
// generator takes no input, returns Int

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
    
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

// multiple functions as parameters

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}


// multiple trailing closures

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}


