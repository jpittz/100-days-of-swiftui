import Cocoa

// dictionaries

// example below of why storing employee data using an array is not sensible
var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")


// dictionary example

// left are keys, right are values
let betterEmployee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// values can be accessed by key

print(betterEmployee["name", default: "Unknown"])
// prints value, or "Unknown" if there isn't one

// declared data type for key and value
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206


