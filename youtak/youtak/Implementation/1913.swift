// 1913 x
import Foundation

let N = Int(readLine()!)!
let num = Int(readLine()!)!
var x = 0
var y = 0
var count = N * N
var snale = Array(repeating: 0, count: count)

while count >= 0 {
    
    snale[y * N + x] = count
    if y < N {
        y += 1
    }
    
    count -= 1
}

for i in 0..<N {
    for j in 0..<N{
        print(snale[i * N + j], separator: "",terminator: " ")
    }
    print("")
}

let index = snale.firstIndex(of: num)!
print(index / N, index % N)
