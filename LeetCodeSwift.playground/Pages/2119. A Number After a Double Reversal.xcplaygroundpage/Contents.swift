final class Solution {
    func isSameAfterReversals(_ num: Int) -> Bool {
        guard num != 0 else { return true }
        return num % 10 != 0
    }
}

Solution().isSameAfterReversals(526)
Solution().isSameAfterReversals(1800)
Solution().isSameAfterReversals(0)
