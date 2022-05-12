// 2961
import Foundation

let N = Int(readLine()!)!
var taste: [(Int, Int)] = []
var tasteS: [Int] = []
var tasteB: [Int] = []
var min = 1_000_000_000

func diff(i: Int, s: Int, b: Int) {
    if i >= N { return }
    let newS = s * taste[i].0
    let newB = b + taste[i].1
    let ans = abs(newS - newB)
    if ans < min {
        min = ans
    }
    diff(i: i+1, s: newS, b: newB)
    diff(i: i+1, s: s, b: b)
}

for _ in 1...N {
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    taste.append((input[0], input[1]))
}

diff(i: 0, s: 1, b: 0)
print(min)
