import Cocoa

// How to use opaque return types

protocol View { }
// shows/describes view layout


func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random() // random true/false
}


// Opaque return types let us hide some info in our code
