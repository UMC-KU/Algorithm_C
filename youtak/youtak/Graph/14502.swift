// 14502
import Foundation

let NM = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let N = NM[0]
let M = NM[1]
var map:[[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

let dir:[(dy: Int, dx: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
var result = 0

for i in 0..<N {
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    for j in 0..<M {
        map[i][j] = input[j]
    }
}


func makeWall(_ n: Int) {
    if n == 3 {
        bfs()
        return
    }
    for i in 0..<N {
        for j in 0..<M {
            if map[i][j] == 0 {
                map[i][j] = 1
                makeWall(n + 1)
                map[i][j] = 0
            }
        }
    }
}

func bfs() {
    var visited = Array(repeating: Array(repeating: false, count: M), count: N)
    var tempMap = map
    var queue:[Int] = []
    
    for i in 0..<N {
        for j in 0..<M {
            if tempMap[i][j] == 2{
                queue.append(i * M + j)
            }
        }
    }
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        let y = pop / M
        let x = pop % M
        for i in 0..<4 {
            let ny = y + dir[i].dy
            let nx = x + dir[i].dx
            if ny < 0 || nx < 0 || ny >= N || nx >= M || tempMap[ny][nx] != 0 || visited[ny][nx] {continue}
            visited[ny][nx] = true
            tempMap[ny][nx] = 2
            queue.append(ny * M + nx)
        }
    }
    
    var count = 0
    for i in 0..<N {
        for j in 0..<M {
            if tempMap[i][j] == 0 {
                count += 1
            }
        }
    }
    result = max(result, count)
    
}

makeWall(0)

print(result)
