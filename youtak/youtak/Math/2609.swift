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

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }

print(gcd(input[0], input[1]))
print(lcm(input[0], input[1]))
