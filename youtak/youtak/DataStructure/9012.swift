// 9012
import Foundation

func isVPS(s: String) -> String {
    var stack:[Character] = []
    
    for i in s {
        if i == "(" {
            stack.append(i)
        } else if i == ")" {
            if stack.isEmpty {
                return "NO"
            } else {
                stack.removeLast()
            }

        }
    }
    
    return stack.isEmpty ? "YES" : "NO"
}

let count = Int(readLine()!)!

for _ in 1...count {
    let input = readLine()!
    print(isVPS(s: input))
}
