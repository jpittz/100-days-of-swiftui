import Cocoa

var greeting = "Hello, playground"

// how to skip loop items with break & continue

/* when swift see 'continue' it'll ignore the
 rest of the current iteration and move onto
 the next item as normal */

let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") { // == false can be used, but is not needed as boolean
        print("Found picture: \(filename)")                // is assigned automatically
    } else {
        continue
    }
}

/* break is similar to continue, but exits the entire
 loop, not just the current iteration */

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) { // common multiple
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
