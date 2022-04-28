// 2578
import Foundation

var bingo:[Int] = []
var answer:[Int] = []

for _ in 1...5{
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    for i in 0..<5{
        bingo.append(input[i])
    }
}

for _ in 1...5{
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    for i in 0..<5{
        answer.append(input[i])
    }
}

func check(bingo: [Int], answer: [Int]){
    
    var bingo = bingo
    
    while(true){
        for i in 0..<5 {
            for j in 0..<5 {
                let number = answer[i*5 + j]
                var count = 0
                bingo[bingo.firstIndex(of: number)!] = 0
                
                if bingo[0] == 0 && bingo[5] == 0 && bingo[10] == 0 && bingo[15] == 0 && bingo[20] == 0 {
                    count += 1
                }
                if bingo[1] == 0 && bingo[6] == 0 && bingo[11] == 0 && bingo[16] == 0 && bingo[21] == 0 {
                    count += 1
                }
                if bingo[2] == 0 && bingo[7] == 0 && bingo[12] == 0 && bingo[17] == 0 && bingo[22] == 0 {
                    count += 1
                }
                if bingo[3] == 0 && bingo[8] == 0 && bingo[13] == 0 && bingo[18] == 0 && bingo[23] == 0 {
                    count += 1
                }
                if bingo[4] == 0 && bingo[9] == 0 && bingo[14] == 0 && bingo[19] == 0 && bingo[24] == 0 {
                    count += 1
                }
                
                if bingo[0] == 0 && bingo[1] == 0 && bingo[2] == 0 && bingo[3] == 0 && bingo[4] == 0 {
                    count += 1
                }
                if bingo[5] == 0 && bingo[6] == 0 && bingo[7] == 0 && bingo[8] == 0 && bingo[9] == 0 {
                    count += 1
                }
                if bingo[10] == 0 && bingo[11] == 0 && bingo[12] == 0 && bingo[13] == 0 && bingo[14] == 0 {
                    count += 1
                }
                if bingo[15] == 0 && bingo[16] == 0 && bingo[17] == 0 && bingo[18] == 0 && bingo[19] == 0 {
                    count += 1
                }
                if bingo[20] == 0 && bingo[21] == 0 && bingo[22] == 0 && bingo[23] == 0 && bingo[24] == 0 {
                    count += 1
                }
                
                if bingo[0] == 0 && bingo[6] == 0 && bingo[12] == 0 && bingo[18] == 0 && bingo[24] == 0 {
                    count += 1
                }
                if bingo[4] == 0 && bingo[8] == 0 && bingo[12] == 0 && bingo[16] == 0 && bingo[20] == 0 {
                    count += 1
                }
                
                if count >= 3 {
                    print(i * 5 + j + 1)
                    return
                }
            }
        }
    }
}

check(bingo: bingo, answer: answer)
