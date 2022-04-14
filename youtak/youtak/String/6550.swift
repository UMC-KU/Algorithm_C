//6550 - n
import Foundation

while let input = readLine() {
    var result = false
    
    let arr = input.components(separatedBy: " ")
    let s = Array(arr[0])
    var t = Array(arr[1])
   
    for i in s {
        if(t.contains(i)) {
            t.remove(at: t.firstIndex(of: i)!)
        } else {
            result = false
            break
        }
        result = true
    }
    
    result ? print("Yes") : print("No")
}


