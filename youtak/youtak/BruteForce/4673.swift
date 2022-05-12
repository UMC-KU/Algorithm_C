// 4673
import Foundation

func checkSelfNum(a: Int) -> Int {
    var result = a
    var num = a
    while num > 0 {
        result += num % 10
        num /= 10
    }
    return result
    
}

var selfNum: Set<Int> = []

for i in 1...10000 {
    selfNum.insert(checkSelfNum(a: i))
}

for i in 1...10000 {
    if !selfNum.contains(i) {
        print(i)
    }
}
