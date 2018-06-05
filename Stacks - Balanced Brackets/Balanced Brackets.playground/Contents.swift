import Foundation



// Problem statment link:https://www.hackerrank.com/challenges/ctci-balanced-brackets/problem


struct Stack<T: Equatable> {
    fileprivate var elements:[T]
    
    mutating func enqueue(value:T) {
        elements.append(value)
    }
    
    mutating func dequeue() -> T {
        return elements.removeLast()
    }
    
    func isEmpty() -> Bool {
        return elements.count == 0
    }
}

func checkBalancedBrackets(input:String) -> Bool {
    
    if input.count == 0 {
        return true
    }else if input.count == 1 {
        return false
    }else if input[input.startIndex] == "]" || input[input.startIndex] == "}" || input[input.startIndex] == ")"   {
        return false
    }
    var isValid = true
    var stack = Stack<Character>(elements: [])
    for ch in input {
        
        if ch == "{" || ch == "[" || ch == "(" {
            stack.enqueue(value: ch)
        }else if !stack.isEmpty() {
            let val = stack.dequeue()
            if ch == "}" {
                if val != "{" {
                    isValid = false
                }
            }else if ch == "]" {
                if val != "[" {
                    isValid = false
                }
            }else if ch == ")" {
                if val != "(" {
                    isValid = false
                }
            }else {
                fatalError("Bad input")
            }
            
        }else {
            isValid = false
            break
        }
    }
    if !stack.isEmpty() {
        isValid = false
    }
    return isValid
}

let check = checkBalancedBrackets(input: "[[][]")
