import Cocoa

// how to use trailing closures and shorthand syntax

let team = ["Andrew", "Gareth", "Suzanne", "Tasha", "Alex"]

let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

print(captainFirstTeam)

let reverseTeam = team.sorted { $0 > $1 }


// this can be written on one line as return isn't needed for 1 line
let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

/* the map() function lets us transform every item in the array using
   some code of our choosing, and sends back a new array of all the
   transformed items
 */
let upperCaseTeam = team.map { $0.uppercased() }
print(upperCaseTeam)

// $0, $1 ect are shorthand parameter names
