import Foundation

let input1 = readLine()!
let input2 = readLine()!

let now = input1.components(separatedBy: ":").map({Int($0)!})
let bombTime = input2.components(separatedBy: ":").map({Int($0)!})
var time:[Int] = []

for i in 0..<3 {
    let temp = bombTime[i] - now[i]
    time.append(temp)
}

if(time[2] < 0 ){
    time[2] += 60
    time[1] -= 1
}
if(time[1] < 0 ){
    time[1] += 60
    time[0] -= 1
}
if(time[0] < 0) {
    time[0] += 24
}

if(time[0] == 0 && time[1] == 0 && time[2] == 0){
    time[0] = 24
    time[1] = 0
    time[2] = 0
}

var result = ""

for i in 0..<3 {
    let temp:String? = time[i] > 10 ? String(time[i]) : "0" + String(time[i])
    result += temp!
    if(i < 2){
        result += ":"
    }
}

print(result)
