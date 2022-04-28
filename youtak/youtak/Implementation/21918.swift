// 21918
import Foundation

let a = readLine()!.components(separatedBy: " ").map{Int($0)!}
let n = a[0]
let m = a[1]
var s = readLine()!.components(separatedBy: " ").map{Int($0)!}

for _ in 1...m {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    switch input[0] {
    case 1:
        let i = input[1]
        let x = input[2]
        s[i - 1] = x
    case 2:
        let l = input[1]
        let r = input[2]
        for k in l-1...r-1 {
            s[k] = s[k] == 0 ? 1 : 0
        }
    case 3:
        let l = input[1]
        let r = input[2]
        for k in l-1...r-1 {
            s[k] = 0
        }
    case 4:
        let l = input[1]
        let r = input[2]
        for k in l-1...r-1 {
            s[k] = 1
        }
    default:
        print("error")
    }
}

var result = s.map{ String($0) }.joined(separator: " ")
print(result)
