final class Solution {
    func checkString(_ s: String) -> Bool {
        var wasB = false
        for i in s {
            if i == "b" {
                wasB = true
            } else if wasB {
                return false
            }
        }
        return true
    }
}

Solution().checkString("aaabbb")
Solution().checkString("abab")
