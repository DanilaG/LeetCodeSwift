final class Solution {
    func findNonMinOrMax(_ nums: [Int]) -> Int {
        let max = nums.max()
        let min = nums.min()
        return nums.first(where: { $0 != max && $0 != min }) ?? -1
    }
}

Solution().findNonMinOrMax([3,2,1,4])
Solution().findNonMinOrMax([1,2])
Solution().findNonMinOrMax([2,1,3])
