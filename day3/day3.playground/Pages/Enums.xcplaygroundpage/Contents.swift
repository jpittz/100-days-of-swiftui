import Cocoa

var selected = "Monday"
selected = "Tuesday"

selected = "January" // month added by mistake
selected = "Friday " // space added by mistake

// enmums solve this problem, setting a range for values allowed

enum Weekday { // line by line
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Weekend { // all in one line
    case saturday, sunday
}

// day will only allows the range of values in the enum Weekday

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.wednesday

// can also be written without re-declaring Weekday

var otherDay = Weekday.monday
otherDay = .tuesday
otherDay = .friday
