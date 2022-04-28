//5597
import Foundation

var n = Array(1...30)

for _ in 1...28 {
    let input = Int(readLine()!)!
    n.remove(at: n.firstIndex(of: input)!)
}

for i in n {
    print(i)
}
