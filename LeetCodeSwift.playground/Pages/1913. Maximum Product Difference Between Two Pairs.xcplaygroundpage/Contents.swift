final class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        let n = nums.count
        return sorted[n - 1] * sorted[n - 2] - sorted[0] * sorted[1]
    }
}

Solution().maxProductDifference([5,6,2,7,4])
Solution().maxProductDifference([4,2,5,9,7,4,8])
