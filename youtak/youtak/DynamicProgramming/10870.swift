// 10870
import Foundation

let n = Int(readLine()!)!

func Fibonacci(_ n: Int) -> Int {
    
    if n == 0 || n == 1 { return n}

    return Fibonacci(n-1) + Fibonacci(n-2)
}

print(Fibonacci(n))
