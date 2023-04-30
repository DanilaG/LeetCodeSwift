final class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var counter = 0
        for char in s.reversed() {
            guard char != " " else {
                if counter == 0 {
                    continue
                }
                return counter
            }
            counter += 1
        }
        
        return counter
    }
}

Solution().lengthOfLastWord("  q qw  ")
