//1316
import Foundation

let count = Int(readLine()!)!
var result = 0

for _ in 0..<count {
    let input = Array(readLine()!)
    var isGroup = true
    for i in 0..<input.count {
        for j in i+1..<input.count {
            if(input[i] != input[j]){
                for k in j+1..<input.count {
                    if(input[i] == input[k]){
                        isGroup = false
                    }
                }
            }
        }
    }
    if(isGroup) { result += 1 }
}

print(result)
