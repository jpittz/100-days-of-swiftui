import Cocoa

// sets don't care about order items are added

let actors = Set([
    "Ryan Reynolds",
    "Bob",
    "Samuel L Jackson"
])

print(actors)

// since sets are unordered, items are inserted, not appended

var dancers = Set<String>()
dancers.insert("Kirstie")
dancers.insert("Rosie")

print(dancers)

// sets don't allow duplicates

/*
 Sets store data in a highly optimised order
 making it milessssss faster to find items
 */
