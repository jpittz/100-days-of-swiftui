import Cocoa

// How to unwrap optionals with guard (guard let)

/* Like if let, guard let checks whether there is a value inside an optional,
   and if there is it will retrieve the value and place it into a constant
   of our choosing  */

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) = \(number * number)")
}

/* However they work differently: */

var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}
func doSomething(str: String) {
    guard let unwrapped = myVar else {
        print("Run if myVar doesn't have a value inside")
        return
    }
}

/* Swift requires you to use return if a guard check fails.
 
 If the optional guard check passes (has a value) you can
 use it after the guard code finishes. */
