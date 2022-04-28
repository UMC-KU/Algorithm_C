// 1212
import Foundation

var input = Int(readLine()!)!
var result = ""
var n = 1

while(input > 0) {
    var num = input % 10
    var temp = ""
    var n = 4
    while(n > 0) {
        temp = String(num/n) + temp
        num %= n
        n /= 2
    }
    
    input /= 10

}

print(result)

