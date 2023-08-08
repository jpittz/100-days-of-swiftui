import Cocoa

// how to take action when a property changes
// Property Observers

struct Game {
    var score = 0 {
        /* The didSet is triggered everytime that score is updated.
           This removes the need of extra print lines in the main body
           of the code, and eliminates the possibility of forgetting
           to print the new score as it is now automated
         */
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

// new example

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New values will be \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("David A")

// didSet is more common than willSet


