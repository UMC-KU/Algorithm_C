// 20437 x
import Foundation

func getMin(s: [Character], num: Int) -> Int {
    
    if num == 0 { return 0 }
    // i 는 블락크기, 블락 안에서 문자 개수 카운트
    for i in num...s.count {
        // j 는 index
        for j in 0...s.count-i {
            var count = 0
            // 블락의 시작과 끝이 같아야 함
            if s[j] == s[j+i-1]{
                //k는 블락 안 index
                for k in j...j+i-1 {
                    if  s[j] == s[k] {
                        count += 1
                    }
                    if count == num {
                        return i
                    }
                }
            }
            
        }
    }
    return 0
}

func getMax(s: [Character], num: Int) -> Int {
    
    if num == 0 { return 0 }
    
    
    // 블락 크기, 문자열 길이 ~ num 까지(num보다 짧으면 할 필요가 없음)
    for i in stride(from: s.count, to: num-1, by: -1) {
        // index
        for j in 0...s.count-i {
            // 블락 시작과 끝이 같을 때
            var count = 0
            if s[j] == s[j+i - 1] {
                for k in j...j+i-1 {
                    if s[j] == s[k] {
                        count += 1
                        if count > num {
                            break
                        }
                    }
                }
                if count == num { return i }
            }
            
        }
    }
    
    return 0
}


let count = Int(readLine()!)!
for _ in 1...count {
    
    let s = Array(readLine()!)
    let num = Int(readLine()!)!
    
    let max = getMax(s: s, num: num)
    if max != 0 {
        let min = getMin(s: s, num: num)
        print(min, max)
    } else {
        print(-1)
    }
    
    
}

