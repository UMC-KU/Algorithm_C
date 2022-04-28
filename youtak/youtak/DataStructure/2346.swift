//2346
import Foundation

let count = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
var arr = Array(1...count)

func pushFront(i: Int) {
    arr.insert(i, at: 0)
}

func pushBack(i: Int){
    arr.append(i)
}

func popFront() -> Int {
    return arr.removeFirst()
}

func popBack() -> Int {
    return arr.removeLast()
}

var k = 0
var result = 0
for _ in 1...count{
    if k > 0 {
        for _ in 0..<k {
            pushBack(i: popFront())
        }
        result = popBack()
        k = input[result - 1]
        print(result)
    } else if k < 0{
        k = -k
        for _ in 0..<k {
            pushFront(i: popBack())
        }
        result = popFront()
        k = input[result - 1]
        print(result)
    } else {
        result = popFront()
        k = input[result - 1]
        print(result)
    }
}


