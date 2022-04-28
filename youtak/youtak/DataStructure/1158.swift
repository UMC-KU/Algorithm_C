// 1158
import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
var n = input[0]
var k = input[1]
var arr = Array(1...n)
var result = "<"

var i = k - 1

while(!arr.isEmpty) {
    while(i >= arr.count ) { i -= arr.count}
    let value = arr.remove(at: i)
    result += String(value) + ", "
    i += (k - 1)
}
result.removeLast(2)
result += ">"
print(result)
