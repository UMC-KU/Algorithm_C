// 17470 x
import Foundation

let firstLine = readLine()!.components(separatedBy: " ").map{Int($0)!}
var N = firstLine[0]
var M = firstLine[1]
let R = firstLine[2]
var arr:[Int] = []


for _ in 0..<N {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    for j in 0..<M {
        arr.append(input[j])
    }
}

let number = readLine()!.components(separatedBy: " ").map{Int($0)!}
var result = arr

//for i in 0..<number.count {
//    let mode = number[i]
//    arr = result
//    switch mode{
//    case 1:
//        for i in 0..<N {
//            for j in 0..<M {
//                result[i * M + j] = arr[(N - 1 - i) * M + j]
//            }
//        }
//    case 2:
//        for i in 0..<N {
//            for j in 0..<M {
//                result[i * M + j] = arr[i * M + (M - 1 - j)]
//            }
//        }
//    case 3:
//        for i in 0..<M {
//            for j in 0..<N {
//                result[i * N + j] = arr[ (N - 1 - j) * M + i]
//            }
//        }
//        let temp = M
//        M = N
//        N = temp
//    case 4:
//        for i in 0..<M {
//            for j in 0..<N {
//                result[i * N + j] = arr[ j * M + (M - 1 - i)]
//            }
//        }
//        let temp = M
//        M = N
//        N = temp
//    case 5:
//        for i in 0..<N {
//            for j in 0..<M {
//                if i < N/2 && j < M/2 {
//                    result[i * M + j] = arr[(i + N/2) * M + j ]
//                } else if i < N/2 && j >= M/2 {
//                    result[i * M + j] = arr[i * M + (j - M/2) ]
//                } else if i >= N/2 && j < M/2{
//                    result[i * M + j] = arr[i * M + (j + M / 2) ]
//                } else {
//                    result[i * M + j] = arr[(i - N/2) * M + j ]
//                }
//            }
//        }
//    case 6:
//        for i in 0..<N {
//            for j in 0..<M {
//                if i < N/2 && j < M/2 {
//                    result[i * M + j] = arr[i * M + (j + M/2) ]
//                } else if i < N/2 && j >= M/2 {
//                    result[i * M + j] = arr[(i + N/2) * M + j]
//                } else if i >= N/2 && j < M/2{
//                    result[i * M + j] = arr[(i - N/2) * M + j]
//                } else {
//                    result[i * M + j] = arr[i * M + (j - M/2)]
//                }
//            }
//        }
//    default:
//        print("error")
//    }
//
//}

var smallArr:[Int] = [1, 2, 4, 3]
var smallResult:[Int] = smallArr

for i in 0..<number.count {
    let mode = number[i]
    smallArr = smallResult
    switch mode{
    case 1:
        smallResult[0] = smallArr[3]
        smallResult[1] = smallArr[2]
        smallResult[2] = smallArr[1]
        smallResult[3] = smallArr[0]
    case 2:
        smallResult[0] = smallArr[1]
        smallResult[1] = smallArr[0]
        smallResult[2] = smallArr[3]
        smallResult[3] = smallArr[2]
    case 3:
        smallResult[0] = smallArr[3]
        smallResult[1] = smallArr[0]
        smallResult[2] = smallArr[1]
        smallResult[3] = smallArr[2]
    case 4:
        smallResult[0] = smallArr[3]
        smallResult[1] = smallArr[2]
        smallResult[2] = smallArr[3]
        smallResult[3] = smallArr[0]
    case 5:

    case 6:

    default:
        print("error")
    }

}


for i in 0..<N {
    for j in 0..<M {
        print(result[i * M + j], terminator: " ")
    }
    print("")
}

