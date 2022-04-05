//
//  main.swift
//  youtak
//
//  Created by 유탁 on 4/1/22.
//

import Foundation

let input = readLine()!.split(separator: " ")
let arr = Array(input[0]).reversed()
let notation = Double(input[1])!
let number:[String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K" ,"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
var digit: Double = 0
var result = 0

for i in arr {
    for j in 0..<number.count {
        if(number[j] == String(i)){
            result += Int(pow(notation, digit)) * j
        }
    }
    digit += 1
}

print(result)

//best answer
//let input = readLine()!.split(separator: " ")
//let result = Int(input[0], radix: Int(input[1])!)!
