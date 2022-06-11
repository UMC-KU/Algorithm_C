// 2615
import Foundation

var arr:[[Int]] = []

for _ in 1...19 {
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    arr.append(input)
}

func printResult(s: Int, y: Int, x: Int) {
    print(s)
    print(y + 1, x + 1)
}

func check() {
    
    for i in 0..<19 {
        for j in 0..<19 {
            
            if arr[i][j] != 0 {
                let s = arr[i][j]
                // 세로
                if i + 4 < 19 && s == arr[i + 1][j] && s == arr[i+2][j] && s == arr[i+3][j] && s == arr[i+4][j] {
                    if ((i == 0 || (i - 1 >= 0 && s != arr[i-1][j]))
                        && (i + 5 == 19 || (i + 5 < 19 && s != arr[i+5][j])))
                         {
                        printResult(s: s, y: i, x: j)
                        return
                    }
                }
                // 가로
                if j + 4 < 19 && s == arr[i][j + 1] && s == arr[i][j + 2] && s == arr[i][j + 3] && s == arr[i][j + 4] {
                    if ( (j == 0 || (j - 1 >= 0 && s != arr[i][j-1]))
                         && (j + 5 == 19 || (j + 5 < 19 && s != arr[i][j+5])))
                        {
                        printResult(s: s, y: i, x: j)
                        return
                    }
                }
                // 대각선 아래
                if i + 4 < 19 && j + 4 < 19 && s == arr[i + 1][j + 1] && s == arr[i + 2][j + 2] &&
                    s == arr[i + 3][j + 3] && s == arr[i+4][j + 4] {
                    if ( ( i == 0 || j == 0 || (i - 1 >= 0 && j - 1 >= 0 && s != arr[i-1][j-1]))
                         && (i + 5 == 19 || j + 5 == 19 || (i + 5 < 19 && j + 5 < 19 && s != arr[i+5][j+5])))
                         {
                        printResult(s: s, y: i, x: j)
                        return
                    }
                }
                // 대각선 위
                if i - 4 >= 0 && j + 4 < 19 && s == arr[i - 1][j + 1] && s == arr[i - 2][j + 2] &&
                    s == arr[i - 3][j + 3] && s == arr[i - 4][j + 4] {
                    if ( ( i == 0 || j == 0 || (i + 1 < 19 && j - 1 >= 0 && s != arr[i + 1][j - 1]))
                         && (i - 5 < 0  || j + 5 == 19 || (i - 5 >= 0 && j + 5 < 19 && s != arr[i-5][j+5])))
                        {
                        printResult(s: s, y: i, x: j)
                        return
                    }
                }
                
            }
            
        }
    }
    print(0)
    

}

check()
