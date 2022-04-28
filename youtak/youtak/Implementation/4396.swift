//4396
import Foundation

let count = Int(readLine()!)!
var arr:[Int] = []
var result = Array(repeating: ".", count: count * count)
var isBombed = false

for _ in 0..<count {
    let input = Array(readLine()!)
    for j in 0..<count {
        let a = input[j] == "*" ? 1 : 0
        arr.append(a)
    }
}

for i in 0..<count {
    let input = Array(readLine()!)
    for j in 0..<count {
        if input[j] == "x" {
            if arr[i*count + j] == 1 {
                isBombed = true
            }
            arr[i*count + j] += 2
        }
    }
}

if isBombed {
    for i in 0..<count {
        for j in 0..<count {
            
            var bomb = 0
            
            if arr[i*count + j] == 2 {
                for y in -1...1 {
                    for x in -1...1 {
                        if i+y >= 0 && j+x >= 0 && i+y < count && j+x < count {
                            if arr[(i+y) * count + (j + x)] == 1 {
                                bomb += 1
                            }
                        }
                    }
                }
                result[i * count + j] = String(bomb)
            } else if arr[i*count + j] == 3 || arr[i*count + j] == 1{
                result[i * count + j] = "*"
            }
            
            
        }
    }
} else {
    for i in 0..<count {
        for j in 0..<count {
            
            var bomb = 0
            
            if arr[i*count + j] == 2 {
                for y in -1...1 {
                    for x in -1...1 {
                        if i+y >= 0 && j+x >= 0 && i+y < count && j+x < count {
                            if arr[(i+y) * count + (j + x)] == 1 {
                                bomb += 1
                            }
                        }
                    }
                }
                result[i * count + j] = String(bomb)
            }
        }
    }
}

for i in 0..<count {
    for j in 0..<count {
        print(result[i*count + j], separator: " ", terminator: "")
    }
    print(" ")
}
