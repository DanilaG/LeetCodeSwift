final class Solution {
    func numDecodings(_ s: String) -> Int {
        let reversed = s.reversed()
        var last: Character?
        var oldResult = 0
        var result = 1
        var newResult = 0
        
        for i in reversed {
            if let last = last, (i == "1") || ((i == "2") && (last <= "6"))  {
                newResult = result + oldResult
            } else if (i != "0") {
                newResult = result
            } else {
                newResult = 0
            }
            
            oldResult = result
            result = newResult
            last = i
        }
        
        return result
    }
}

Solution().numDecodings("2611055971756562")
