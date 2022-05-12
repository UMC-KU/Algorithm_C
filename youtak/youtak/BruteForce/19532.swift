//19532
import Foundation

let input = read Line()!.components(separatedBy: " ").map({Int($0)!})

let a = input[0]
let b = input[1]
let c = input[2]
let d = input[3]
let e = input[4]
let f = input[5]

for y in -999...999 {
    for x in -999...999 {
        if a * x + b * y == c && d * x + e * y == f {
            print(x, y)
            break
        }
    }
}
