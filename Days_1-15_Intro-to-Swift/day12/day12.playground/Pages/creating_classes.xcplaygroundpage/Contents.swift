import Cocoa

// How to create your own classes

// classes are similar to structs

/*
Similarities
 
1. You get to create and name them.
2. You can add properties and methods, including property observers and access control.
3. You can create custom initializers to configure new instances however you want.
 
Differences
 
1. You can make one class build upon functionality in another class, gaining all its properties
   and methods as a starting point. If you want to selectively override some methods, you can do that too.
2. Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your
   own initializer, or assign default values to all your properties.
3. When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
4. When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
5. Even if you make a class constant, you can still change its properties as long as they are variables.
 */

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
