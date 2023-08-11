import Cocoa

// How to add initialisers for classes

/* If a child class has a custom init it must always
   call the parents inits after its finished setting up its
   own properties (if it has any) */

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        // used to copy parameter into the property
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        // super allows us to call up to methods inherited from parent class
        // in this case, we are calling parent init
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
let R35 = Car(isElectric: false, isConvertible: false)
let Porsche911 = Car(isElectric: false, isConvertible: true)
