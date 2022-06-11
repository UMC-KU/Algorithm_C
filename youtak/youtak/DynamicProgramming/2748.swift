import Foundation

let n = Int(readLine()!)!

var a = 0
var b = 1

for _ in 0 ..< n
{
    let c = a + b
    a = b
    b = c
    
}

print(a)

