import Cocoa

// How to copy classes

/* In Swift, all copies of a class instance share the same data,
   meaning that any changes you make to one copy will automatically
   change the other copies. This happens because classes are reference
   types in Swift, which means all copies of a class all refer back to
   the same underlying pot of data. */

class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

// when the username is updated for user2 it is also updated for user1, as the instance was copied

print(user1.username)

// in comparison, struct copies do not update with other instances

// deep copy for unique instances of a class

class Account {
    var accNo = 121234
    
    func copy() -> Account {
        let account = Account()
        account.accNo = accNo
        return account
    }
}

var accountJames = Account()
var accountPittz = accountJames.copy()
accountPittz.accNo = 132312

print(accountJames.accNo)
print(accountPittz.accNo)

// only accountPittz updated, as its instance has its own data



