// 2156
import Foundation

let n = Int(readLine()!)!
var wine: [Int] = [0]

for _ in 1...n {
    wine.append(Int(readLine()!)!)
}


func maxWine(_ n: Int) -> Int {
    
    var arr = Array(repeating: 0, count: n + 1)
    arr[1] = wine[1]
    if n > 1 {
        arr[2] = wine[1] + wine[2]
    }
    if n > 2{
        for i in 3...n {
            arr[i] = max(arr[i-3] + wine[i-1] + wine[i], arr[i-2] + wine[i], arr[i-1])
        }
    }

    return arr[n]
}


print(maxWine(n))
