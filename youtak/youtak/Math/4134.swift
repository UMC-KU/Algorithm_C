import Foundation

func isNotPrime(input: Int) -> Bool {
    if(input < 4){
        return input <= 1 ? true : false
    }
    
    for i in 2...Int(sqrt(Double(input))) {
        if(input % i == 0){
            return true
        }
    }
    return false
}

let count = Int(readLine()!)!
for _ in 1...count {
    var number = Int(readLine()!)!
    while(isNotPrime(input: number)) {
        number += 1
    }
    print(number)
}
