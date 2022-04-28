// 2753
import Foundation

func isLeapYear(i: Int) -> Bool {
    if (i % 4 == 0 && i % 100 != 0) || i % 400 == 0 {
        return true
    }
    return false
}

isLeapYear(i: Int(readLine()!)!) ? print("1") : print("0")
