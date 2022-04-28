//1935
import Foundation

let count = Int(readLine()!)!
let input = readLine()!
var number:[Double] = []
var arr:[Double] = []
var result:Double = 0
var k = 0

for _ in 1...count {
    number.append(Double(readLine()!)!)
}

for i in input {
    switch i {
    case "+":
        result = arr.removeLast() + arr.removeLast()
        arr.append(result)
    case "*":
        result = arr.removeLast() * arr.removeLast()
        arr.append(result)
    case "-":
        let temp = arr.removeLast()
        result = arr.removeLast() - temp
        arr.append(result)
    case "/":
        let temp = arr.removeLast()
        result = arr.removeLast() / temp
        arr.append(result)
    default:
        let index = Int(i.asciiValue!) - 65
        arr.append(number[index])
    }
}

print(String(format: "%0.2f", result))
