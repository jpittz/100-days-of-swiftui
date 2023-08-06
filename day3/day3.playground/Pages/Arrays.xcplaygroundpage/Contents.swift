import Cocoa


// declaring arrays
var teamMustang = ["Jim", "Jimbo", "Jimmy"]
let numbers = [4, 5, 8, 72]
var temperatures = [23.2, 32.1, 18.4]

print(teamMustang[2])
print(numbers[0])

// appending items to array
teamMustang.append("Bob")
teamMustang.append("Novall")

let firstNumber = numbers[0]


// array of ints
var scores = Array<Int>()
scores.append(100)
scores.append(78)
scores.append(15)
print(scores[1])

// array of strings declared in either way
var songs = Array<String>()

var albums = [String]()
var results = [Int]()

// output no. of items in array
print(scores.count)

// removing items from array
scores.remove(at: 2)
print(scores)
scores.removeAll()
print(scores.count)

// checks if an array contains an item
let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))
print(bondMovies.contains("Casino Royale"))

// sorts list (alphabetical/numrical)
let cities = ["London", "Athens", "Rome", "Sydney", "Los Angeles"]
print(cities.sorted())

/* reverse arrays
 items are only reversed when needed
 */
print(cities.reversed())
print(cities.reversed()[1])
