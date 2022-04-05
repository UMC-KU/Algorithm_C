import Foundation

let input = readLine()!.components(separatedBy: " ").map({ Int($0) })
var number = input[0]!
var oldNumber = number
var newNumber = -1
var count = 0

while(newNumber != number){
    count += 1
    newNumber = 10 * (oldNumber % 10) + ( oldNumber / 10 + oldNumber % 10 ) % 10
    oldNumber = newNumber
}

print(count)
