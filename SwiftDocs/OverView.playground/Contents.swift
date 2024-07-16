import Cocoa

// All of the notes/ experiments from the Swift Documentation for Stanford Course
let myConst: Float = 4.0

let name = "Joe"
//let greeting = "Hello, \(name)!"

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
// or
if let nickname {
    print("Hey, \(nickname)")
}


let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log")
case "cucumber", "watermelon":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)


func greeting(person: String, lunch: String) -> String {
    return "Hello \(person), today's lunch special is: \(lunch)."
}
greeting(person: "Bob", lunch: "Meatloaf")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics)

var numbers = [20, 19, 7, 12]
var mutatedNums = numbers.map( {(number: Int) -> Int in
    if number.isMultiple(of: 2) {
        let result = 3 * number
        return result
    } else {
        return 0
    }
})

