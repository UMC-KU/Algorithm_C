//18528
import Foundation

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
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
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()
        while now == 10 || now == 32 { now = read() }
        while now != 10 && now != 32 && now != 0 {
            str += Int(now)
            now = read()
            
        }
        return str
    }
    
}


var q:[Int] = []
var front = 0
var rear = 0
let file = FileIO()
let count = file.readInt()
for _ in 1...count {
    let input = file.readString()
    switch input{
    case 448:
        q.append(file.readInt())
        rear += 1
    case 335:
        if front == rear {
            print("-1")
        } else {
            print("\(q[front])")
            front += 1
        }
    case 443:
        print("\(rear - front)")
    case 559:
        rear - front == 0 ? print("1") : print("0")
    case 553:
        rear - front == 0 ? print("-1") : print("\(q[front])")
    case 401:
        rear - front == 0 ? print("-1") : print("\(q[rear - 1])")
    default: print("error")
    }
    
}
