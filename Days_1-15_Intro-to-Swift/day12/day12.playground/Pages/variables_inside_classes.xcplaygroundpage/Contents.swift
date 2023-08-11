import Cocoa

// How to work with variables inside classes

class User {
    var name = "Junkrat"
}

// changing a constant?
let user = User()

/* Except it doesn’t change the constant value at all. Yes, the data inside the class has changed,
   but the class instance itself – the object we created – has not changed, and in fact can’t be
   changed because we made it constant.

   Think of it like this: we created a constant signpoint pointing towards a user, but we erased
   that user’s name tag and wrote in a different name. The user in question hasn’t changed – the person
   still exists – but a part of their internal data has changed. */

// name is a var, inside the constant object user
user.name = "Zarya"
print(user.name)

// changing the instance of a user (as it's a var)
var user2 = User()
user2.name = "Tracer"
user2 = User() // new instance
print(user.name)
