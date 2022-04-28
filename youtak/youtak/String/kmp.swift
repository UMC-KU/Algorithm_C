//kmp
import Foundation

func getPi(p: String) -> [Int] {
    
    let c = Array(p)
    var pi = Array(repeating: 0, count: c.count)
    var j = 0
    for i in 1..<c.count {
        while(j > 0 && c[i] != c[j]) {
            j = pi[j-1]
        }
        if(c[i] == c[j]) {
            j += 1
            pi[i] = j
        }
    }
    
    return pi
}

func kmp(s: String, p: String) -> [Int] {
    
    let pi = getPi(p: p)
    let s = Array(s)
    let p = Array(p)
    let pLength = p.count
    var j = 0
    var result:[Int] = []
    
    for i in 0..<s.count {
        while(j > 0 && s[i] != p[j]){
            j = pi[j-1]
        }
        if (s[i] == p[j]) {
            if(j == pLength - 1) {
                result.append(i - pLength + 1)
                j = pi[j]
            } else {
                j += 1
            }
        }
    }
    
    return result
}

let s = readLine()!
let p = readLine()!
let index = kmp(s: s, p: p)
index.isEmpty ? print(0) : print(1)
