//2504
import Foundation

let input = readLine()!

func value(s: String) -> Int {
    var arr:[Character] = []
    var result = 0
    var temp = 1
    var before = Character(" ")
    for i in s {
        switch i {
        case "(":
            arr.append(i)
            temp *= 2
        case ")":
            if arr.isEmpty || arr.last! != "("{
                return 0
            }
            if before == "(" {
                result += temp
            }
            arr.removeLast()
            temp /= 2
        case "[":
            arr.append(i)
            temp *= 3
        case "]":
            if arr.isEmpty || arr.last! != "[" {
                return 0
            }
            if before == "["{
                result += temp
            }
            arr.removeLast()
            temp /= 3
        default:
            return 0
        }
        before = i
    }

    return !arr.isEmpty ? 0 :  result
}



print(value(s: input))
