import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
let n = input[0]
var k = input[1]
var numbers = [Int](2...n)

for i in 2...n {
    for p in stride(from: i, to: n+1, by: i){
        if (numbers != numbers.filter { $0 != p }) {
            numbers = numbers.filter { $0 != p }
            k -= 1
            if(k == 0){
                print(p)
                break
            }
        }
    }
}
