//6550
import Foundation

while let input = readLine() {

    let arr = input.components(separatedBy: " ")
    let s = arr[0]
    let t = arr[1]
    var i = 0
    var result = false

    for j in t {
        if j == s[s.index(s.startIndex, offsetBy: i)] {
            i += 1
            if (i == s.count) {
                result = true
                break
            }
        }
    }

    result ? print("Yes") : print("No")
}
