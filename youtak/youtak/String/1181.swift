// 1181
import Foundation

let count = Int(readLine()!)!
var input = Set<String>()

for _ in 1...count {
    input.insert(readLine()!)
}

let result = input.sorted {
    if($0.count != $1.count) {
        return $0.count < $1.count
    } else {
        return $0 < $1
    }
    
}

for i in result{
    print(i)
}
