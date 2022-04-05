import Foundation

func isPrime(input: Int) -> Bool {
    if(input < 4){
        return input == 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(input))) {
        if(input % i == 0){
            return false
        }
    }
    return true
}

let input1 = Int(readLine()!)!
let input2 = readLine()!.components(separatedBy: " ").map({Int($0)!})
var result = 0

for i in 0..<input1 {
    if(isPrime(input: input2[i])) {
        result += 1
    }
}

print(result)
