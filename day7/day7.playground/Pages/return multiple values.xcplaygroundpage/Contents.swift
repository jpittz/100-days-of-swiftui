import Cocoa

// How to return multiple values from a function

// single value:    -> DATATYPE {
// multiple values: -> [String] {
// or:              -> [String: String] {

// better tuple solution:

                // return parameters and types
func getUser() -> (firstName: String, lastName: String){
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

/* Swift can't know ahead of time if dictionary keys are present.
   When you access tuple values, Swift knows it will be there.
   We access values using 'user.firstName', not a string.
   Dictionary might contain hundreds of other values.
 */

func getUser3() -> (firstName: String, lastName: String){
    ("Taylor", "Swift")
}

/* When using Tuples ^^^ we can also remove the return
   types as Swfit knows what they are as we defined
   the, with the function. */

let user3 = getUser()
print("Name: \(user3.firstName) \(user3.lastName)")

/* If we don't give tuples types e.g
   -> (String, String)
 
   they can be indexed by user.0 and user.1
   Although this is similar to an array it is different
   as with a tuple we definitely know each index will
   contain a value. It is also done as .0 instead of [0]
 */

let (first, last) = getUser3()
print("Name: \(first) \(last)")

// The above solution pulls the values from the tuple individually
// This is known as destructuring
