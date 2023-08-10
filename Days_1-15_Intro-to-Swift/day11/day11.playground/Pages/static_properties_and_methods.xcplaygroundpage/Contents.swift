import Cocoa

// Static properties and methods

struct School {
    static var studentCount = 0
    
    static func add(student: String) { // mutating isn't needed
        print("\(student) joined the school.")
        studentCount += 1
    }
}

/* static means the vars and funcs belong to the School struct itself,
   and not an instance of it */

School.add(student: "Taylor Swift")
print(School.studentCount)

/* If you want to mix and match static and non-static properties and methods, there are two rules:

  - To access non-static code from static code… you’re out of luck: static properties and methods
    can’t refer to non-static properties and methods because it just doesn’t make sense.
    Which instance of School would you be referring to?
 
  - To access static code from non-static code, always use your type’s name such as School.studentCount.
    You can also use Self to refer to the current type.
*/

// (lowercase)  self means current value of a struct: 55, "Hello", true
// (uppercase)  Self means current type of struct: Int, String, Bool


// statics are useful to to organize common data in my apps, for example

struct AppData {
    static let version = "1.3 Beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

AppData.version // no new instance required

// a second common use of static data is to create examples of structs

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "h4irf0rce0ne")
}

Employee.example // example is avaliable everywhere without a new instance


