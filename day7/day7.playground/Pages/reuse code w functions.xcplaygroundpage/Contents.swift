import Cocoa

// reusing code with functions

func showWelcome() {
    print("Welcome to my app!")
    print("By default this prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

// the functions call site
showWelcome()

// .isMultiple(of: x) is a built in function

                  // ( parameter )
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 8)


// you can also pass in multiple parameters

func printXTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

// print 5 times table up to 9
// number and end are the argument labels
printXTables(number: 5, end: 9)

/* arguments passed into a function must be
 in the same order the parameters appear */
