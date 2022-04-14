//9046
import Foundation

let testCase = Int(readLine()!)!
var alpha = Array(repeating: 0, count: 26)
var maxIndex = 0
var duplicate = false
var result:[String] = []

for _ in 1...testCase {
    duplicate = false
    for i in 0..<26 {
        alpha[i] = 0
    }
    
    let input = readLine()!
    for i in 0..<input.count {
        let c = input[input.index(input.startIndex, offsetBy: i)]
        if(c != " "){ //공백의 아스키 코드가 32, 97을 뺄 경우 에러 발생 -> 예외처리
            alpha[Int(c.asciiValue!) - 97] += 1
        }
    }
    
    maxIndex = 0
    for i in 0..<26 {
        if(alpha[i] > alpha[maxIndex]) {
            maxIndex = i
        }
    }
    
    for i in 0..<26 {
        if(i != maxIndex && alpha[i] == alpha[maxIndex]){
            duplicate = true
            break
        }
    }
    duplicate ? result.append("?") : result.append(String(UnicodeScalar(maxIndex + 97)!))
}

for i in result {
    print(i)
}
