//12865
import Foundation

let NK = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let N = NK[0]
let K = NK[1]
var dp = Array(repeating: Array(repeating: 0, count: K + 1), count: N + 1)

for i in 1...N {
    let WV = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let w = WV[0]
    let v = WV[1]
    
    for j in 1...K {
        if w > j {
            dp[i][j] = dp[i-1][j]
        } else {
            dp[i][j] = max(v, dp[i-1][j], dp[i-1][j - w] + v)
        }
    }
    
}

print(dp[N][K])
