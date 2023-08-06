import Cocoa

// How to handle errors in functions

enum PasswordError: Error {
    case short, obvious
}

// function to check strength of password

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

/* if a function is able to throw errors, throws must be
   marked before the return type. We don't specify the kind
   of errors that can be thrown.
 
   Being marked with throws means it can throw erros, but
   it isn't required to. When it is time to thro an error,
   we use the throw keyword followed by the error. This causes
   the function to exit immediately.
 
   With the function above, if we pass the first two errors,
   we carry on as normal and in this instance, must return a string.
 */

let string = "12345"

// try must be written before all to indicate code may stop

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error")
}

/* try! does not require do or catch. This indicates you expect
no errors, and is risky and should rarely be used */

// errors in a do block move straight to the catch block
k
