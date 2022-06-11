// 1260 x
import Foundation

let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let N = a[0]
let M = a[1]
let V = a[2]
var graph:[[Int]] = Array(repeating: [], count: N + 1)
var visitedDFS:[Bool] = Array(repeating: false, count: N + 1)
var visitedBFS:[Bool] = Array(repeating: false, count: N + 1)
var queue:[Int] = []


for _ in 1...M {
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let a = input[0]
    let b = input[1]
    graph[a].append(b)
    graph[b].append(a)
}

for i in 1...N {
    graph[i].sort()
}

func dfs(_ n: Int) {
    
    visitedDFS[n] = true
    print(n, terminator: " ")
    for i in graph[n] {
        if !visitedDFS[i] {
            dfs(i)
        }
    }

}

func bfs(_ n: Int) {
    queue.append(n)
    visitedBFS[n] = true
    
    while !queue.isEmpty {
        let a = queue.removeFirst()
        print(a, terminator: " ")
        for i in graph[a] {
            if !visitedBFS[i] {
                queue.append(i)
                visitedBFS[i] = true
            }
        }
    }
}

dfs(V)
print("")
bfs(V)
