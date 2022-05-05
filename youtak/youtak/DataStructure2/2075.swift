//2075
import Foundation

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)]
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer[index]
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() }
        if now == 45 { isPositive.toggle(); now = read() }
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
}

var heap:[Int] = [0]

func push(a: Int) {
    
    var index = heap.count
    heap.append(a)
    while index > 1 && a > heap[index/2] {
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



let file = FileIO()
let N = file.readInt()
for _ in 1...N {
    for _ in 0..<N {
        push(a: file.readInt())
    }
}

for _ in 1..<N {
    pop()
}

print(pop())
