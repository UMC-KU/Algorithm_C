//17609
import Foundation

let count = Int(readLine()!)!

func isPalindrome(input: [Character], l: Int, r: Int, number: Int) -> Int {
   
    var l = l
    var r = r
    
    while(l < r){
        if(input[l] != input[r]) {
            if(number == 0) {
                if(isPalindrome(input: input, l: l, r: r - 1, number: 1) == 0 ||
                   isPalindrome(input: input, l: l + 1, r: r, number: 1) == 0){
                    return 1
                }
                return 2
            } else {
                return 2
            }
        } else {
            l += 1
            r -= 1
        }
    }
    return 0
}

for _ in 1...count {
    let input = Array(readLine()!)
    print(isPalindrome(input: input, l: 0, r: input.count-1, number: 0))
}
