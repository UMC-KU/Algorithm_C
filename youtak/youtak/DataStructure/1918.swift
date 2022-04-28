// 1918
import Foundation

let input = readLine()!
var result = ""
var stack:[Character] = []

// ( 경우 스택에 push
// ) 일 경우 ( 가 나올 때 까지 스택을 pop
// 연산자의 우선 순위가 작거나 같으면 pop 해서 result 에 추가
// * / 일 경우 스택 최상단이 * / 이면 pop, + - ( 이면 Push
// + - 일 경우 ( 를 제외하고 다 pop
// 우선 순위가 크면 스택에 push
// 피연산자(알파벳) 은 다 결과 stack에 추가
// 입력을 다 받고 스택이 빌 때까지 다 pop하면서 result에 추가

for i in input {
    switch i {
    case "(":
        stack.append(i)
    case ")":
        while !stack.isEmpty && stack.last! != "(" {
            result += String(stack.removeLast())
        }
        stack.removeLast() // (는 pop하고 result에 추가하지 않음
    case "*", "/":
        while !stack.isEmpty && (stack.last! == "*" || stack.last! == "/") {
            result += String(stack.removeLast())
        }
        stack.append(i)
    case "+", "-":
        while !stack.isEmpty && stack.last! != "(" {
            result += String(stack.removeLast())
        }
        stack.append(i)
    default:
        result += String(i)
    }
}

while(!stack.isEmpty){
    result += String(stack.removeLast())
}

print(result)
