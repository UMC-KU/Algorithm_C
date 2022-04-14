// 10798
import Foundation

var input: [String] = []
var result = ""
var newLetter = ""
var maxCount = 0

for _ in 1...5 {
    let s = readLine()!
    input.append(s)
    if(s.count > maxCount) {
        maxCount = s.count
    }
}

for i in 0..<maxCount {
    for j in 0..<5 {
        if(i < input[j].count){
            let index = input[j].index(input[j].startIndex, offsetBy: i)
            newLetter +=  String(input[j][index])
        }
    }
}

print(newLetter)
