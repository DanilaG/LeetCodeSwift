final class Solution {
    func sumIndicesWithKSetBits(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        for i in 0..<nums.count where i.nonzeroBitCount == k {
            result += nums[i]
        }
        return result
    }
}

Solution().sumIndicesWithKSetBits([5,10,1,5,2], 1)
Solution().sumIndicesWithKSetBits([4,3,2,1], 2)
