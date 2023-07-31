final class Solution {
    func isGood(_ nums: [Int]) -> Bool {
        let n = nums.count - 1
        var checker = Array(repeating: false, count: n)
        var maxRepeat = false
        for i in nums {
            guard i <= n else { return false }
            if n == i, checker[i - 1] {
                guard !maxRepeat else { return false }
                maxRepeat = true
            } else {
                guard !checker[i - 1] else { return false }
            }
            checker[i - 1] = true
        }
        return checker.reduce(true, { $0 && $1 }) && maxRepeat
    }
}

Solution().isGood([2, 1, 3])
Solution().isGood([1, 3, 3, 2])
Solution().isGood([1, 3, 3, 2, 2])
Solution().isGood([1, 1])
Solution().isGood([3, 4, 4, 1, 2, 1])
