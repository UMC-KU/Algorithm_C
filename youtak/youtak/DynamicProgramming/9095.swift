//9095
import Foundation

let T = Int(readLine()!)!

func plus(_ n :Int) -> Int {
    
    var dp:[Int] = Array(repeating: 0, count: 11)
    dp[1] = 1
    dp[2] = 2
    dp[3] = 4
    
    if n <= 3 { return dp[n] }
    for i in 4...n {
        dp[i] = dp[i - 1] + dp[i - 2] + dp [i - 3]
    }
     
    return dp[n]
    
}

for _ in 1...T {
    let input = Int(readLine()!)!
    print(plus(input))
}
