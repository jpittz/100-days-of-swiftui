import Cocoa

// How to create and use protocol extensions

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

// protocol-oriented-programming POP

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

/* This extension means that sayHello is automatically included
   in the struct and it is not required to specify the function.
   But, you can if you want */

struct Employee: Person {
    let name: String
/*  func sayHell() {
        print("This is optional")
    } */
}

let brian = Employee(name: "Brian")
brian.sayHello()
