import Cocoa

// How to compute property values dynamically

struct Employee {
    let name: String
    var vacationAllocated: Int
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken // getter
        }
        
        set {
            vacationAllocated = vacationTaken + newValue // setter
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14) // initialiser

archer.vacationTaken += 4
archer.vacationRemaining = 5 // setter
print(archer.vacationAllocated)

// getter is read, setter is write
