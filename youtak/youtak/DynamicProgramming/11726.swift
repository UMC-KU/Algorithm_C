// 11726
import Foundation

let n = Int(readLine()!)!

func tile(_ n: Int) -> Int {
    var dp = Array(repeating: 0, count: n+1)
    
    if n <= 2 {
        return n
    } else {
        dp[1] = 1
        dp[2] = 2
        for i in 3...n {
            dp[i] = (dp[i - 1] + dp[i - 2]) % 10_007
        }
    }
    
    return dp[n]
}


print(tile(n))

