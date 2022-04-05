import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    
    if(b == 0){
        return a
    } else {
        return gcd(b, a%b)
    }
}

let count = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
let number = Int(readLine()!)!
let result = input.filter { gcd($0, number) == 1}
print(Double(result.reduce(0, +))/Double(result.count))

