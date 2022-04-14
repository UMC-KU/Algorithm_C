//20154
import Foundation

let input = readLine()!
let count:[Int] = [3,2,1,2,3,3,3,3,1,1,3,1,3,3,1,2,2,2,1,2,1,1,2,2,2,1]
var number:[Int] = []
var result = 0
var isOdd = true

for i in input {
    number.append(count[Int(i.asciiValue! - 65)])
}

result = number.reduce(0, +) % 10

result % 2 == 0 ? print("You're the winner?") : print("I'm a winner!")
