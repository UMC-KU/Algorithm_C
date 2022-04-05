import Foundation

import Foundation

func gcd(_ a:Int, _ b:Int) -> Int {
    if(b == 0) {
        return a
    } else {
        return gcd(b, a%b)
    }
}

func lcm(_ a:Int, _ b:Int) -> Int {
    return a * b / gcd(a,b)
}
 
let caseNumber = Int(readLine()!)!
var inputArr:[Int] = []

for _ in 0..<caseNumber{
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)!}
    print(lcm(input[0], input[1]))
}
