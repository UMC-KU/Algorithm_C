// 2178
import Foundation

let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let N = a[0]
let M = a[1]
var maze:[[Int]] = []

for _ in 0..<N {
    let input = readLine()!.map{Int(String($0))!}
    maze.append(input)
}

let direction:[(dy: Int, dx: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]
var queue: [(y:Int, x:Int)] = []
queue.append((y: 0 , x: 0))

while !queue.isEmpty {
    let deQ = queue.removeFirst()
    let y = deQ.y
    let x = deQ.x

    for d in direction {
        let newY = y + d.dy
        let newX = x + d.dx
        if newY < 0 || newX < 0 || newY >= N || newX >= M || maze[newY][newX] == 0 {continue}

        if maze[newY][newX] == 1 {
            maze[newY][newX] = maze[y][x] + 1
            queue.append((y: newY, x: newX))
        }
    }
}

print(maze[N-1][M-1])
