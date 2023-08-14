import Cocoa

// How to unwrap optionals with nil coalescing

// lets us unwrap an optional and provide a default value if the optional was empty.


let captains = [  // string dict.
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"]
// new will be set to a nil optional string as "Serenity" is not in the dict.

let new3 = captains["Sam", default: "N/A"]
let new2 = captains["John"] ?? "N/A" // method with nil coalescing
// new will be set the default value "N/A" if "John" isn't in the dict.
// new2 will always now be a real string

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favourite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number = Int(input) ?? 0
print(number)
