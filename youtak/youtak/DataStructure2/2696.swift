// 2696
import Foundation

var heap: [Int] = [0]

func push(a: Int) {
    
    var index = heap.count
    var parent = 1
    heap.append(a)
    
    if index % 2 == 0 {
        while index > 1 && a > heap[index/2] {
            let temp = heap[index/2]
            heap[index/2] = a
            heap[index] = temp
            index /= 2
        }

        while parent <= (heap.count - 1) / 2 {
            var child = parent * 2
            if (heap[parent] >= heap[child] && heap[parent] <= heap[child + 1]) { break }
            
            let temp = heap[parent]
            heap[parent] = heap[child]
            heap[child] = temp
            parent = child
        }
        
    } else  {
        while index > 1 && a < heap[index/2] {
            let temp = heap[index/2]
            heap[index/2] = a
            heap[index] = temp
            index /= 2
        }
    }

}


let T = Int(readLine()!)!

for _ in 1...T {
    heap = [0]
    let M = Int(readLine()!)!
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}

    print(M/2 + 1)
    
    for i in 0..<M {
        push(a: input[i])
        print(heap)
//        if i % 2 == 0 {
//            print(heap[1])
//        }
    }
    


}

