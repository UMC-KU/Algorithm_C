// 10866
import Foundation

var arr:[String ] = []

func pushFront(i: String) {
    arr.insert(i, at: 0)
}

func pushBack(i: String) {
    arr.append(i)
}

func popFront() {
    arr.isEmpty ? print(-1) : print(arr.removeFirst())
}

func popBack() {
    arr.isEmpty ? print(-1) : print(arr.removeLast())
}

func size() {
    print(arr.count)
}

func printEmpty() {
    arr.isEmpty ? print(1) : print(0)
}

func front() {
    arr.isEmpty ? print(-1) : print(arr[0])
}

func back() {
    arr.isEmpty ? print(-1) : print(arr[arr.count - 1])
}

let count = Int(readLine()!)!

for _ in 1...count {
    let input = readLine()!.components(separatedBy: " ")
    switch input[0] {
    case "push_front":
        pushFront(i: input[1])
    case "push_back":
        pushBack(i: input[1])
    case "pop_front":
        popFront()
    case "pop_back":
        popBack()
    case "size":
        size()
    case "empty":
        printEmpty()
    case "front":
        front()
    case "back":
        back()
    default:
        print("error")
    }
}
