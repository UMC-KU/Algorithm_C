//2493
import Foundation

let count = Int(readLine()!)!
let tower = readLine()!.components(separatedBy: " ").map{Int($0)!}
var arr:[Int] = []

arr.append(0)
for i in 1..<count {
    let sender = tower[i]
    if tower[i-1] > sender {
        arr.append(i)
    } else {
        var highIndex = arr[i-1] - 1
        while(true) {
            if highIndex < 0 {
                arr.append(0)
                break
            } else if tower[highIndex] > sender {
                arr.append(highIndex + 1)
                break
            }
            highIndex = arr[highIndex] - 1
        }
    }
}

let result = arr.map{String($0)}.joined(separator: " ")
print(result)
