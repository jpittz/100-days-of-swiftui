import Cocoa

// How to provide default values for parameters

/* The parameter 'end' has been assigned the default
   value of 12. This means if no argument is passed for
   end, its value is 12. Any arguments passed for end will
   overwrite 12 */

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}

// passing argument for end
printTimesTables(for: 8, end: 20)

// using default value for end
printTimesTables(for: 8)

// leaving in sensible default when suitable is good practice
