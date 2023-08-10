import Cocoa

// Checkpoint 6

struct Car {
    let make: String
    let model: String
    let regYear: Int
    let bhp: Int
    var currentGear = 0 // car is hopefully starting in neutral
    
    // allowing gears 1-10
    // ignoring reverse and neutral
    
    mutating func changeUp() {
        if currentGear < 10 { // check upshift won't exceed max gear
            self.currentGear += 1 // upshift
        } else {
            print("No more gears")
        }
    }
    
    mutating func changeDown() {
        if currentGear > 0 { // check downshift won't go below neutral
            self.currentGear -= 1 // downshift
        } else {
            print("Already in neutral")
        }
    }
}

var weekendCar = Car(make: "Ford", model: "Fiest ST", regYear: 72, bhp: 256)
var commuteCar = Car(make: "VW", model: "GTD", regYear: 67, bhp: 180)

weekendCar.changeUp()
weekendCar.changeUp()

weekendCar.changeDown()

print(weekendCar.currentGear)
