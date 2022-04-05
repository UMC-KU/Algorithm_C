import Foundation

func isPrime(_ input: Int) -> Bool {
    if(input < 4){
        return input <= 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(input))) {
        if(input % i == 0){
            return false
        }
    }
    return true
}

let count = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
let prime = Set<Int>(input.filter {isPrime($0)})
let result = prime.isEmpty ? -1 : prime.reduce(1, *)
print(result)

