// 21756
import Foundation

let N = Int(readLine()!)!
var arr = Array(1...N)

while arr.count > 1 {
    
    for i in 0..<arr.count {
        if i%2 == 0 {
            arr[i] = 0
        }
    }
    arr = arr.filter({$0 != 0 })

}


print(arr[0])
