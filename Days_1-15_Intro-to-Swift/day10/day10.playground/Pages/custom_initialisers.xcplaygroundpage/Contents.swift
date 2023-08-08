import Cocoa

// How to set custom initialisers

// Rule: all properties must have a value by the time the initializer ends.

struct Player {
    let name: String
    let number: Int
    
    init(name: String) { // no func keyword & no explicit return type
        self.name = name // self assigns selfs name property
        // without self, we would have name = name
        // with self, we assign name to the property of Players name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Hamez P")
print(player.number)


