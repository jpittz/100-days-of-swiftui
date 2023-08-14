import Cocoa

// How to handle multiple optionals using optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"

print(author)

/* if we have a book, and the book has an author, and the author has a first letter,
   then uppercase it and send it back, otherwise send back A */
