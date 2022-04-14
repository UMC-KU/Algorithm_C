// 4659
import Foundation

let collec:[Character] = ["a", "e", "i", "o", "u"]

func isCollection(input: Character) -> Bool {
    for i in collec {
        if (input == i) {
            return true
        }
    }
    return false
}

while(true) {
    let input = readLine()!
    if (input == "end") {break}
    let inputChar = Array(input)
    var condition = true

    if !input.contains(where: {collec.contains($0)}) {
        condition = false
        }
    
    if(inputChar.count > 2) {
        for i in 0..<inputChar.count-2 {
            if(isCollection(input: inputChar[i]) &&
               isCollection(input: inputChar[i+1]) &&
               isCollection(input: inputChar[i+2]))  {
                condition = false
                break
            } else if (!isCollection(input: inputChar[i]) &&
                       !isCollection(input: inputChar[i+1]) &&
                       !isCollection(input: inputChar[i+2])) {
                condition = false
                break
            }
        }
    }


    for i in 0..<inputChar.count-1 {
        if(inputChar[i] == inputChar[i+1] && inputChar[i] != "e" && inputChar[i] != "o") {
            condition = false
            break
        }
    }
    
    condition ? print("<\(input)> is acceptable.") : print("<\(input)> is not acceptable.")
}


