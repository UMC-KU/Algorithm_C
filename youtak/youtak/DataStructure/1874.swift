//1874
import Foundation

func check(n: Int) {
    
    var stack:[Int] = []
    var result = ""
    var count = 1
    
    for _ in 1...n {
        let input = Int(readLine()!)!
        
        if count <= input {
            while stack.last != input {
                stack.append(count)
                count += 1
                result.append("+")
            }
        }
        if stack.last! == input {
            stack.removeLast()
            result.append("-")
        } else {
            print("NO")
            return
        }
        
    }
    
    for i in result {
        print(i)
    }

}

let n = Int(readLine()!)!
check(n: n)
