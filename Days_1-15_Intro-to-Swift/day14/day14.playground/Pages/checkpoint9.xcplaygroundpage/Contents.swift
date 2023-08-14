import Cocoa

// Checkpoint 9

func arr(numbers: [Int]?) -> Int { return numbers?.randomElement() ?? Int.random(in: 1...100) }

arr(numbers: [122,143])
arr(numbers: [])
arr(numbers: nil)
