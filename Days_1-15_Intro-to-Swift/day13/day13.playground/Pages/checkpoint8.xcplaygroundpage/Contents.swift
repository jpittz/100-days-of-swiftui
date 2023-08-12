import Cocoa

// Checkpoint 8

/*
 
 Your challenge is this: make a protocol that describes a building,
 adding various properties and methods, then create two structs,
 House and Office, that conform to it. Your protocol should require
 the following:

- A property storing how many rooms it has.
- A property storing the cost as an integer (e.g. 500,000 for a
  building costing $500,000.)
- A property storing the name of the estate agent responsible for
  selling the building.
- A method for printing the sales summary of the building, describing
  what it is along with its other properties.
*/

protocol Building {
    var rooms: Int { get }
    var price: Int { get }
    var agent: String { get }
    func printSalesSummary()
}

struct House: Building {
    let type = "House"
    var rooms: Int
    var price: Int
    var agent: String
    func printSalesSummary() {
        var salesSummary = "This property is a \(rooms) room \(type) priced at £\(price) sold by \(agent)."
        print(salesSummary)
    }
}

struct Office: Building {
    let type = "Office"
    var rooms: Int
    var price: Int
    var agent: String
    func printSalesSummary() {
        var salesSummary = "This property is a \(rooms) room \(type) priced at £\(price) sold by \(agent)."
        print(salesSummary)
    }
}

let house = House(rooms: 6, price: 1_200_000, agent: "Bob's Agents")
house.printSalesSummary()

let office = Office(rooms: 18, price: 14_000_000, agent: "Bob's Commercial ltd")
office.printSalesSummary()
