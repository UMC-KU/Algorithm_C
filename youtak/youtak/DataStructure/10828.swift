//10828
import Foundation

let count = Int(readLine()!)!
var stack:[Int] = []

for _ in 1...count {
    let input = readLine()!.components(separatedBy: " ")
    switch input[0]{
    case "push":
        stack.append(Int(input[1])!)
    case "pop":
        stack.isEmpty ? print(-1) : print(stack.removeLast())
    case "size":
        print(stack.count)
    case "empty":
        stack.isEmpty ? print(1) : print(0)
    case "top":
        stack.isEmpty ? print(-1) : print(stack[stack.count - 1])
    default:
        print("error")
    }
}
