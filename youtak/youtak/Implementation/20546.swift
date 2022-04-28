//20546
import Foundation

let m = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
var aMoney = m
var bMoney = m
var aStock = 0
var bStock = 0
var upDAY = 0
var downDay = 0

for i in 0..<14 {
    
    aStock += aMoney / input[i]
    aMoney -= (aMoney / input[i]) * input[i]
    
    if(i > 0) {
        if input[i] > input[i - 1] {
            upDAY += 1
            downDay = 0
        } else if input[i] < input[i - 1] {
            upDAY = 0
            downDay += 1
        } else {
            upDAY = 0
            downDay = 0
        }
        
        if upDAY >= 3 {
            bMoney += bStock * input[i]
            bStock = 0
        }
        if downDay >= 3 {
            bStock += bMoney / input[i]
            bMoney -= (bMoney / input[i]) * input[i]
        }
    }
    
}

let lastDayPrice = input[13]
var aResult = aMoney + aStock * lastDayPrice
var bResult = bMoney + bStock * lastDayPrice

print(aResult > bResult ? "BNP" : aResult < bResult ? "TIMING" : "SAMESAME")
