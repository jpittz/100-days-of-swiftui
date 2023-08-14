import Cocoa

// How to handle missing data with optionals

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"] // string: string dict.
let peachOpposite = opposites["Peach"] // no value exists

// options allow for there to be a value or 'nil'

// unwrapping optionals

/* If the optional has a value, it will be unwrapped. The string will be assigned to the const.
   As this was successful, the if body will run. If it didn't have a value the if body wouldn't run.
   If there is an else body, it would run instead.*/

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

// String ? CAN have a value
// String MUST have a value

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

// swift allows us to unwrap into a constant of the same name
   //unwraped   optional
if let number = number {
    print(square(number: number))
}

// this unwrapping technique is called shadowing
