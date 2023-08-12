## Extensions have some benefits over functions:

[Extensions](https://www.hackingwithswift.com/quick-start/beginners/how-to-create-and-use-extensions)

 **Code completion**
 
1. When you type 'quote.' Xcode brings up a list of methods on the
   string, including all the ones we add in extensions. This makes
   our extra functionality easy to find.
 
 **Code organisation**
 
2. Writing global functions makes your code rather messy – they
   are hard to organize and hard to keep track of. On the other
   hand, extensions are naturally grouped by the data type
   they are extending.
 
 **Internal access**
 
3. Because your extension methods are a full part of the original
   type, they get full access to the type’s internal data. That
   means they can use properties and methods marked with private
   access control, for example.
   


**Extensions let us add functionality to our own custom types,
or to Swift’s built-in types**
