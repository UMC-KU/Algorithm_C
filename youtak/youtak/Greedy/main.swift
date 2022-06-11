//2839
import Foundation

let N = Int(readLine()!)!

func sugar(_ n: Int) -> Int {
    
    var num = n
    var result = 0
    
    while num >= 0 {
        if num % 5 == 0 {
            result += ( num / 5)
            return result
        }
        num -= 3
        result += 1
    }
    
    return -1
}

print(sugar(N))
