import Cocoa

// How to create and use closures

func greetUser() {
    print("Hi there!")
}

greetUser()

/* Don't add () when assigning a function
   otherwise swift will try to assign its
   return value instead of copying the function
*/

var greetCopy = greetUser
// var greetCopy: () -> Void = greetUser
greetCopy()

/* closure uses = instead of ()
   it is similar to a function */

let sayHello = {
    print("Hi there!")
}

// allowing parameters in a closure:

let sayHelloHello = { (name: String) -> String in
    "Hi \(name)!"
}

/* 'in' comes after parameters and return type.
    It is the marker for the end of parameter and return
    type and the start of a closure.
*/

// called for externally, and ID internally
// type accept int, return string
func getUserData(for id: Int) -> String {
    if id == 1989{
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

/* when copying this function the external name 'for'
   was lost. We did not need to type:
 
   let user = data(for: 1989)
*/

let team = ["Andrew", "Gareth", "Suzanne", "Tasha", "Alex"]

// takes two or more strings, returns bool
let sortedTeam = team.sorted()
print(sortedTeam)

// takes two strings, returns bool
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)


let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)

// note: anywhere you can pass a function, you can pass a closure

