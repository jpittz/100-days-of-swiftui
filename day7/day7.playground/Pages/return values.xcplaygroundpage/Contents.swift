import Cocoa

// how to return values from functions

// sqrt is a function which returns the sqrt of a number

let root = sqrt(169)
print(root)

// the function must send back an int
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


/* Do two strings contain the same
   letters regardless of their order?
 
This function should:
 
 - Accept two string parameters
 - Return true if their letters are the same

 */

let stringA = "james"
let stringB = "semja"

/* When there is only one line of code in the
   function, swift will recognise this and
   return the result of that line without the
   return keyword being needed */

func checkString(stringA: String, stringB: String) -> Bool {
    stringA.sorted() == stringB.sorted()
}

let stringResult = checkString(stringA: stringA, stringB: stringB)
print(stringResult)

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

/* Return can be used to exit a function
   immediately assuming a return value
   is not required */

func sayHello() {
    return
}
