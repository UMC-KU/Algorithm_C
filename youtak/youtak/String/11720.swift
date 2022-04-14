//11720
import Foundation

let input1 = Int(readLine()!)!
let input2 = readLine()!.map{String($0)}
var result = 0
for i in input2 {
    result += Int(i)!
}
print(result)
