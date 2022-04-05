6import Foundation

let inputOne = Int(readLine()!)!
let inputTwo = readLine()!.components(separatedBy: " ").map({ Int($0)! })

var numbers = inputTwo.sorted(by: <)
var commonDivisor:[Int] = []
var flag = 0

for i in 1...numbers[0] {
    flag = 0
    for j in 0..<inputOne {
        if (numbers[j] % i != 0) {
            flag = 1
            break
        }
    }
    if(flag == 0) {
        commonDivisor.append(i)
    }
    
}

for i in commonDivisor {
    print(i)
}
