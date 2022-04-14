//9342
import Foundation

let count = Int(readLine()!)!
let arr = ["A", "B", "C", "D", "E", "F"]


for _ in 1...count {
    
    var index = 0
    var condition = [false , false , false, false, false]
    
    let input = Array(readLine()!)
    
    for i in 0..<arr.count {
        if(arr[i] == String(input[0])) {
            condition[0] = true
            index = i + 1
        }
    }
    
    for i in index..<input.count {
        if(input[i] == "A") {
            condition[1] = true
            index = i + 1
        }
    }
    
    for i in index..<input.count {
        if(input[i] == "F") {
            condition[2] = true
            index = i + 1
        }
    }
    
    for i in index..<input.count {
        if(input[i] == "C") {
            condition[3] = true
            index = i
        }
    }
    
    for i in arr {
        if(String(input[input.count - 1]) == i) {
            condition[4] = true
        }
    }

    condition.contains(false) ? print("Good") : print("Infected!")
    
}
