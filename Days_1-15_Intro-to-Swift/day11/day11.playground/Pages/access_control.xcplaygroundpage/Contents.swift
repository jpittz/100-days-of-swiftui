import Cocoa

// How to limit access to internal data using access control

struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 500)

let success = account.withdraw(amount: 450)

if success {
    print("Withdrawn successfully")
} else {
    print("Failed")
}

/* we can bypass this accessing funds directly, which shouldn't be allowed.
   We solve this by adding the word private in front of the variable.
   This is called access control.

Uses:
 
 Use private for “don’t let anything outside the struct use this.”
 Use fileprivate for “don’t let anything outside the current file use this.”
 Use public for “let anyone, anywhere use this.”
 Use private(set) for "public to read, private to write"
*/



