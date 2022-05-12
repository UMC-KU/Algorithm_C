// 2798
import Foundation

let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let N = a[0]
let M = a[1]
var result = 0

for i in 0..<N-2 {
    for j in 1..<N-1 {
        for k in 2..<N {
            if i != j && j != k && i != k {
                let sum = input[i] + input[j] + input[k]
                if sum > result && sum <= M {
                    result = sum
                }
            }
        }
    }
}

print(result)
