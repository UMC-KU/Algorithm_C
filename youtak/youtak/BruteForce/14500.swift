// 14500
import Foundation

let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let N = a[0]
let M = a[1]
var arr:[Int] = []
var max = 0

for _ in 1...N {
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    for i in 0..<M {
        arr.append(input[i])
    }
}


for i in 0..<N {
    for j in 0..<M {
        
        // 하늘색
        // 가로
        if j + 3 < M {
            var sum = 0
            for k in 0...3 {
                sum += arr[i * M + j + k]
            }
            if sum > max { max = sum }
        }
        
        // 세로
        if i + 3 < N {
            var sum = 0
            for k in 0...3 {
                sum += arr[(i + k) * M + j]
            }
            if sum > max { max = sum }
        }
        
        // 노란색
        if i + 1 < N && j + 1 < M{
            let sum = arr[i * M + j] + arr[i * M + (j + 1)] + arr[(i + 1) * M + j] + arr[(i + 1) * M + (j + 1)]
            if sum > max { max = sum }
        }
        
        // 주황색 - 시계방향 회전
        // 0
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + j] + arr[(i + 1) * M + j] + arr[(i + 2) * M + j] + arr[(i + 2) * M + (j + 1)]
            if sum > max { max = sum }
        }
        // 90
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + j] + arr[i * M + (j + 1)] + arr[i * M + (j + 2)] + arr[(i + 1) * M + j]
            if sum > max { max = sum }
        }
        // 180
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + j] + arr[i * M + (j + 1)] + arr[(i + 1) * M + (j + 1)] + arr[(i + 2) * M + (j + 1)]
            if sum > max { max = sum }
        }
        // 270
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + (j + 2)] + arr[(i + 1) * M + j] + arr[(i + 1) * M + (j + 1)] + arr[(i + 1) * M + (j + 2)]
            if sum > max { max = sum }
        }
        // 대칭
        // 0
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + j + 1] + arr[(i + 1) * M + (j + 1)] + arr[(i + 2) * M + j] + arr[(i + 2) * M + (j + 1)]
            if sum > max { max = sum }
        }
        //90
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + j] + arr[i * M + (j + 1)] + arr[i * M + (j + 2)] + arr[(i + 1) * M + (j + 2)]
            if sum > max { max = sum }
        }
        //180
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + j] + arr[i * M + (j + 1)] + arr[(i + 1) * M + j] + arr[(i + 2) * M + j]
            if sum > max { max = sum }
        }
        //270
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + j] + arr[(i + 1) * M + j] + arr[(i + 1) * M + (j + 1)] + arr[(i + 1) * M + (j + 2)]
            if sum > max { max = sum }
        }
        
        // 연두색
        // 0
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + j] + arr[(i + 1) * M + j] + arr[(i + 1) * M + (j + 1)] + arr[(i + 2) * M + (j + 1)]
            if sum > max { max = sum }
        }
        
        // 90
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + (j + 1) ] + arr[i * M + (j + 2)] + arr[(i + 1) * M + j] + arr[(i + 1) * M + (j + 1)]
            if sum > max { max = sum }
        }
        // 대칭
        // 0
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + j + 1] + arr[(i + 1) * M + j] + arr[(i + 1) * M + (j + 1)] + arr[(i + 2) * M + j]
            if sum > max { max = sum }
        }
        // 90
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + j ] + arr[i * M + (j + 1)] + arr[(i + 1) * M + (j + 1)] + arr[(i + 1) * M + (j + 2)]
            if sum > max { max = sum }
        }
        
        // 핑크
        // 0
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + j] + arr[i * M + (j + 1)]  + arr[i * M + (j + 2)]  + arr[(i + 1) * M + (j + 1)]
            if sum > max { max = sum }
        }
        
        //90
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + (j + 1)] + arr[(i + 1) * M + j]  + arr[(i + 1) * M + (j + 1)]  + arr[(i + 2) * M + (j + 1)]
            if sum > max { max = sum }
        }
        
        //180
        if i + 1 < N && j + 2 < M {
            let sum = arr[i * M + (j + 1)] + arr[(i + 1) * M + j]  + arr[(i + 1) * M + (j + 1)]  + arr[(i + 1) * M + (j + 2)]
            if sum > max { max = sum }
        }
        
        //270
        if i + 2 < N && j + 1 < M {
            let sum = arr[i * M + j] + arr[(i + 1) * M + j]  + arr[(i + 1) * M + (j + 1)]  + arr[(i + 2) * M + j]
            if sum > max { max = sum }
        }
    }
}

print(max)

