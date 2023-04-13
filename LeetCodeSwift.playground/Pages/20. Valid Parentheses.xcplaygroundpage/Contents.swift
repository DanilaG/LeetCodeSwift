final class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [String]()
        stack.reserveCapacity(s.count)
        
        for i in s {
            if i == "}" {
                guard stack.last == "{" else { return false }
                stack.removeLast()
            } else if i == ")" {
                guard stack.last == "(" else { return false }
                stack.removeLast()
            } else if i == "]" {
                guard stack.last == "[" else { return false }
                stack.removeLast()
            } else {
                stack.append(String(i))
            }
        }
        
        return stack.isEmpty
    }
}

// Solution().isValid("()")
// Solution().isValid("()[]{}")
Solution().isValid("(]")
