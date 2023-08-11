import Cocoa

// How to create a deinitializer for a class

// a deinit is called when an object is destroyed (and all instances)

// they aren't written with parentheses as they never take parameters

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!") // output when created
    }
    
    // deinitialiser
    deinit {
        print("User \(id): I'm dead!") // output when destroyed
    }
}

/* if we create a user inside a loop, it will be destroyed
   when current loop iteration ends */

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

/* if we were adding our User instances as they were created,
   they would only be destroyed when the array is cleared */
print()
var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")
