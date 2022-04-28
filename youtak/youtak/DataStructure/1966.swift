// 1966
import Foundation

let count = Int(readLine()!)!

for _ in 1...count {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let n = input[0]
    let m = input[1]
    var key = readLine()!.components(separatedBy: " ").map{Int($0)!}
    var number = 0
    
    // (index, 중요도)
    var q:[(Int, Int)] = []
    
    for (index, priority) in key.enumerated() {
        q.append((index, priority))
    }
    
    key.sort()
    
    while(true) {
        if q[0].1 == key.max() {
            number += 1
            if q[0].0 == m {
                print(number)
                break
            } else {
                q.removeFirst()
                key.popLast()
            }
        } else {
            q.append(q.removeFirst())
        }
    }
    
   
}
