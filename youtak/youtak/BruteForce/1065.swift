// 1065 -> generalize 할 수 있는 방법 고민해보기
import Foundation

func checkOneNum(number: Int) -> Bool {
    
    if number < 100 {
        return true
    }
    if number >= 1000 {
        return false
    }
    
    let a = number / 100
    let b = (number % 100) / 10
    let c = number % 10
    if a - b == b-c {
        return true
    }
    
    return false
    
}

let input = Int(readLine()!)!
var result = 0

for i in 1...input {
    
    if checkOneNum(number: i) {
        result += 1
    }
}

print(result)
