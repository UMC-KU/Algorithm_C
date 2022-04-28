//9342
import Foundation

let count = Int(readLine()!)!
let pattern = "^[A-F]?A+F+C+[A-F]?$"

for _ in 1...count {
    let input = readLine()!
    let result = (input.range(of: pattern, options: .regularExpression) != nil)
    result ? print("Infected!") : print("Good")
}
