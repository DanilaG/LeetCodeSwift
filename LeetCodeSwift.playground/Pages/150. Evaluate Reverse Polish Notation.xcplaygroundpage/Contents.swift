final class Solution {
    private let operations: [String: (Int, Int) -> Int] = [
        "+": { return $0 + $1 },
        "-": { return $0 - $1 },
        "/": { return $0 / $1 },
        "*": { return $0 * $1 }
    ]
    
    func evalRPN(_ tokens: [String]) -> Int {
        var values = [Int]()
        
        for i in tokens {
            if let operation = operations[i] {
                let b = values.popLast()!
                let a = values.popLast()!
                values.append(operation(a, b))
            } else {
                values.append(Int(i)!)
            }
        }
        
        return values.first!
    }
}

Solution().evalRPN(["2","1","+","3","*"])
