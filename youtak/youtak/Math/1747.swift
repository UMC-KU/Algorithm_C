// 21275 22943
import Foundation

func isPrime(_ input: Int) -> Bool{
    if(input < 4) {
        return input <= 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(input))) {
        if(input % i == 0){
            return false
        }
    }
    return true
}

func isPalindrome(_ input: Int) -> Bool {
    var number = input
    var result = 0
    while(number > 0) {
        result = (result * 10) + (number % 10)
        number = number / 10
    }
    return input == result ? true : false
}

var N = Int(readLine()!)!

while(!(isPrime(N) && isPalindrome(N))) {
    N += 1
}

print(N)
