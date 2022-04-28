//20291
import Foundation

let count = Int(readLine()!)!
var dict: [String: Int] = [:]

for _ in 1...count {
    let input = readLine()!
    let fileExtenstion = input.components(separatedBy: ".")[1]
    if let number = dict[fileExtenstion] {
        dict[fileExtenstion] = number + 1
    } else {
        dict[fileExtenstion] = 1
    }
}

let newDict = dict.sorted { $0.key < $1.key}

for (key, value) in newDict {
    print(key, value)
}
