import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}

let A = input[0]
let B = input[1]
let C = input[2]
let D = input[3]
var health = D
var time = 24
var result = 0

while(time > 0){
    if(health / A > 0){
        result += B
        health -= A
    } else {
        health += C
        if(health > D) {
            health = D
        }
    }
    time -= 1
}

print(result)
