import Cocoa

// checkpoint 3

// fizz buzz

for num in 1...100 {
    if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if num.isMultiple(of: 3) {
        print("Fizz")
    } else if num.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(num)
    }
}
