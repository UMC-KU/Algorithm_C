import Foundation

var input = Int(readLine()!)!
var result: [Int] = []

while(input > 1){
    for i in 2...input {
        if(input % i == 0){
            print(i)
            result.append(i)
            input = input / i
            break
        }
    }
}

if(input == 1){
    
} else {
    for i in result {
        print(i)
    }
}

