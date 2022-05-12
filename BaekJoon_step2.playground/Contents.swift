import Foundation

// 1330
let inputString = readLine()!
let inputStringArray = inputString.components(separatedBy: " ")

if Int(inputStringArray[0])! > Int(inputStringArray[1])! {
    print(">")
} else if Int(inputStringArray[0])! < Int(inputStringArray[1])! {
    print("<")
} else {
    print("==")
}

// 9498
let score = Int(readLine()!)

switch score! {
case 90...100:
    print("A")
case 80...89:
    print("B")
case 70...79:
    print("C")
case 60...69:
    print("D")
default:
    print("F")
}

//2753
import Foundation

let year = Int(readLine()!)!

if(year%4 == 0 && ((year%100 != 0) || (year%400 == 0))) {
    print(1)
} else {
    print(0)
}

//14681
import Foundation

let x = Int(readLine()!)!
let y = Int(readLine()!)!

if(x>0 && y>0) {
    print("1")
} else if(x<0 && y>0) {
    print("2")
} else if(x<0 && y<0) {
    print("3")
} else if(x>0 && y<0) {
    print("4")
}

//2884
import Foundation

let time = readLine()!
let timeArray = time.components(separatedBy: " ")
var hour = Int(timeArray[0])!
var minute = Int(timeArray[1])! - 45

if(minute<0) {
    minute = 60 + minute
    hour = hour - 1
    if(hour<0) {
        hour = 24 + hour
    }
}

print(hour, minute)

//2525
import Foundation

let time = readLine()!
let timeArray = time.components(separatedBy: " ")
var hour = Int(timeArray[0])!
var minute = Int(timeArray[1])!
let cookingTime = Int(readLine()!)!

hour = (hour + (minute + cookingTime) / 60) % 24
minute = (minute + cookingTime) % 60

print(hour, minute)

//2480
var diceArray = readLine()!.split(separator: " ").map { Int(String($0))! }

diceArray.sort(by: >)

if(diceArray[0] == diceArray[1] && diceArray[1] == diceArray[2]) {
    print(10000 + diceArray[0] * 1000)
} else if(diceArray[0] == diceArray[1]) {
    print(1000 + diceArray[0] * 100)
} else if(diceArray[1] == diceArray[2]) {
    print(1000 + diceArray[1] * 100)
} else {
    print(diceArray[0] * 100)
}
