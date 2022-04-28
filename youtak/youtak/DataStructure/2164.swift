//2164
import Foundation

let input = Int(readLine()!)!
var q = Array(1...input)
var front = 0
var rear = input - 1
var result = 1

func push(i: Int) {
    q.append(i)
    rear += 1
}

func pop() -> Int {
    front += 1
    return(q[front - 1])
}

while(front != rear) {
    result = pop()
    result = pop()
    push(i: result)
}

print(result)
