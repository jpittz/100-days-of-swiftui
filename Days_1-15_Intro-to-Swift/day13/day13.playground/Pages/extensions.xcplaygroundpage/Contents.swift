import Cocoa

// How to create and use extensions

var quote = "   The truth is rarely pure and never simnple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    /* this function means we can now use 'trimmed(quote)',
       which is much shorter */
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    // property
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

// Shorter solutions


// trimmED for returning new string
let trimmed2 = quote.trimmed()
print(trimmed2)

// trim to modify existing variable
quote.trim()
print(quote)



let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

/*

If Swift were to keep the memberwise initializer in this instance,
it would skip our logic for calculating the approximate reading time.

However, sometimes you want both – you want the ability to use a
custom initializer, but also retain Swift’s automatic memberwise initializer.
In this situation it’s worth knowing exactly what Swift is doing:
if we implement a custom initializer inside our struct, then Swift disables
the automatic memberwise initializer.

That extra little detail might give you a hint on what’s coming next:
if we implement a custom initializer inside an extension, then Swift won’t
disable the automatic memberwise initializer. This makes sense if you think
about it: if adding a new initializer inside an extension also disabled the
default initializer, one small change from us could break all sorts of
other Swift code.
 
 */


struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let habits7 = Book(title: "7 Habits of Highly Successful People", pageCount: 750, readingHours: 19)




