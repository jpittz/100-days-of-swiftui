import Cocoa

// Checkpoint 7

/*

1. The Animal class should have a legs integer property that tracks how many legs the animal has.
2. The Dog class should have a speak() method that prints a generic dog barking string, but each
   of the subclasses should print something slightly different.
3. The Cat class should have a matching speak() method, again with each subclass printing something different.
4. The Cat class should have an isTame Boolean property, provided using an initializer.
 
 */

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bark")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Woofles")
    }
}


var dog1 = Corgi(legs: 4)
dog1.speak()
var dog2 = Poodle(legs: 18)
dog2.speak()
var dog3 = Dog(legs: 4)
dog3.speak()


class Cat: Animal {
    
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() {
        print("Meow")
    }
}

class Persian: Cat {
    override func speak() {
        print("...meow...")
    }
}

class Lion: Cat {
    override func speak() {
        print("ROAR")
    }
}

var cat1 = Persian(isTame: true, legs: 4)
cat1.speak()
var cat2 = Lion(isTame: false, legs: 4)
cat2.speak()
