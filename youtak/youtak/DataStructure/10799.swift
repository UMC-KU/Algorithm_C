//10799
import Foundation

let input = readLine()!
var arr:[Character] = []
var stick = 0
var result = 0
var buf = 0

for i in input {
    switch i {
    case "(":
        arr.append(i)
        buf = 1
    case ")":
        arr.removeLast()
        if buf == 1 {
            result += arr.count
        } else {
            result += 1
        }
        buf = 0
    default:
        print("error")
    }
}

print(result)
