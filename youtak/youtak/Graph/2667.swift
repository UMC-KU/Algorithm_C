// 2667
import Foundation

let N = Int(readLine()!)!
var arr:[[Int]] = []
var result:[Int] = []

for _ in 1...N {
    let input = readLine()!.map{ Int(String($0))! }
    arr.append(input)
}

func bfs(_ i: Int, _ j : Int) -> Int {
    let dir:[(dy: Int, dx: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
    var q:[(y: Int, x: Int)] = [(i, j)]
    var count = 1
    
    arr[i][j] = 0
    
    while !q.isEmpty {
        let deQ = q.removeFirst()
        let y = deQ.y
        let x = deQ.x
        
        for d in dir {
            let newY = y + d.dy
            let newX = x + d.dx
            if newY < 0 || newX < 0 || newY >= N || newX >= N || arr[newY][newX] != 1  {continue}
            arr[newY][newX] = 0
            count += 1
            q.append((newY, newX))
            
        }
    }
    
    return count
}

for i in 0..<N {
    for j in 0..<N {
        if arr[i][j] == 1{
            result.append(bfs(i, j))
        }
    }
}

result = result.sorted(by: <)
print(result.count)
for i in result {
    print(i)
}

