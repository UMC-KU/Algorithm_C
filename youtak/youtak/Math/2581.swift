import Foundation

func isPrime(input: Int) -> Bool {
    //for loop 범위를 위한 예외문
    if(input < 4){ //1 2 3
        return input == 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(input))) {
        if(input % i == 0){
            return false
        }
    }
    return true
}

let input1 = Int(readLine()!)!
let input2 = Int(readLine()!)!
var result:[Int] = []

for i in input1...input2 {
    if(isPrime(input: i)){
        result.append(i)
    }
}

if (result.isEmpty){
    print(-1)
} else {
    print(result.reduce(0){ $0 + $1})
    print(result[0])
}

