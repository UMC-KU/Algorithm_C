//16171
import Foundation

let input = readLine()!
let word = readLine()!
var onlyString = ""

for i in input {
    if(i.asciiValue! > 57) {
        onlyString += String(i)
    }
}

onlyString.contains(word) ? print(1) : print(0)
