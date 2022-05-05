//11279
import Foundation

var heap:[Int] = [0]

func add(a: Int) {
    var index = heap.count
    heap.append(a)
    while index > 1 && a > heap[index/2]{
        let temp = heap[index/2]
        heap[index/2] = a
        heap[index] = temp
        index /= 2
    }
}

func pop() -> Int {

    if heap.count <= 1 {
        return 0
    }
    
    let max = heap[1]
    let index = heap.count - 1
    heap[1] = heap[index]
    heap.remove(at: index)
    
    var parent = 1
    
    while parent <= (heap.count - 1) / 2 {
        var child = parent * 2
        if(child < heap.count - 1 && heap[child] < heap[child + 1]){
            child += 1
        }
        if (heap[parent] >= heap[child]) { break }
        
        let temp = heap[parent]
        heap[parent] = heap[child]
        heap[child] = temp
        parent = child
    }
    
    return max
}

let count = Int(readLine()!)!

for _ in 1...count {
    
    let input = Int(readLine()!)!
    if input == 0 {
        print(pop())
    } else if input > 0 {
        add(a: input)
    }
    
}

