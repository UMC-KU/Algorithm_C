//2493 - 2
let n = Int(readLine()!)!
let tower = readLine()!.split(separator: " ").map{Int(String($0))!}

var stack = [Int]()
var result = Array(repeating: 0, count: n)

for i in stride(from: n-1, to: -1, by: -1) {
    while !stack.isEmpty && tower[i] > tower[stack.last!] {
        let index = stack.removeLast()
        result[index] = i + 1
    }
    stack.append(i)
}

print(result.map{String($0)}.joined(separator: " "))
