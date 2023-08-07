import Cocoa

// how to customise parameter labels

func rollDice(sides: Int, count: Int) -> [Int] {
    
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)



let lyric = "I see a red door and I want it painted black."
print(lyric.hasPrefix("I see"))


/* '_ ' before the parameter name, it is then not required
   when passing arguments into the function */

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
            //  (string: string) is not required due to '_ '
let result = isUppercase(string)

            //  external internal
func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

// for is used externally, number is used internally

// for is argument label
// number is parameter label

printTimesTable(for: 5)
