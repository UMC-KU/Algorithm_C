import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if(b == 0) {
        return a
    } else {
        return gcd(b, a%b)
    }
}

let testCase = Int(readLine()!)!
for _ in 0..<testCase {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    var result = Array<Int>()
    for j in 0..<input[0] {
        for k in j+1..<input[0] {
            result.append(gcd(input[j+1], input[k+1]))
        }
    }
    print(result.reduce(0, +)) 7
    
}
