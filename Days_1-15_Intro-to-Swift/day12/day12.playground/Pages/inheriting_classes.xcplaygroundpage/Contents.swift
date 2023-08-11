import Cocoa

// How to make one class inherit from another

// properties and methods can be shared via inheritance

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}
            // : inherit
class Developer: Employee { // class Developer is inherited from class Employee
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    /* if a child class wants to change a method from a parent class,
       you must use override in the child class’s version */
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

// the final keywork means it can have a parent but cannot have a child
final class Manager: Employee { // class Manager is inherited from class Employee
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

/* Swift is smart about how method overrides work: if your parent class has a
   work() method that returns nothing, but the child class has a work() method
   that accepts a string to designate where the work is being done, that does not
   require override because you aren’t replacing the parent method.
 */



