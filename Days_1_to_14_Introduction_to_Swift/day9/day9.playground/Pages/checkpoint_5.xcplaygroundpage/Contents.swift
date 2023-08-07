import Cocoa

// checkpoint 5

let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

/* Tasks:

1) is to filter out any numbers that are even
   leaving the array to contain odd numbers only

2) is to sort this filtered array into ascending
   order

3) map them into strings in the format:
   "7 is a lucky number"
 
4) print this line by line
 
*/

let find = { (numbers: [Int]) in
    numbers.filter { !$0.isMultiple(of: 2) }.sorted().map { print(" \($0) is a lucky number!")}
}

// .filter.sorted.map run sequentially on numbers

find(luckyNumbers)
