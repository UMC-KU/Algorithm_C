// 1764
import Foundation

let count = readLine()!.components(separatedBy: " ").map{Int($0)!}
var noListen = Set<String>()
var noSee = Set<String>()

for _ in 1...count[0] {
    noListen.insert(readLine()!)
}

for _ in 1...count[1] {
    noSee.insert(readLine()!)
}

let result = noListen.intersection(noSee).sorted(by: <)
print(result.count)
for i in result {
    print(i)
}
