//14467
import Foundation

let count = Int(readLine()!)!
var cow = Array(repeating: 2, count: 10)
var result = 0

for _ in 1...count {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let index = input[0] - 1
    let location = input[1]
    
    if cow[index] == 2{
        cow[index] = location
    } else if cow[index] != location {
        cow[index] = location
        result += 1
    }

    
}

print(result)
