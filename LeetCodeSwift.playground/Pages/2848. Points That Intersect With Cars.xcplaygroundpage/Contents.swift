class Solution {
    func numberOfPoints(_ nums: [[Int]]) -> Int {
        guard nums.count > 1 else { return nums[0][1] - nums[0][0] + 1  }
        let nums = nums.sorted(by: { $0[0] < $1[0] })
        var result = 0
        var start = nums[0][0]
        var end = nums[0][1]
        for i in 1..<nums.count {
            if nums[i][0] <= end {
                end = max(end, nums[i][1])
            } else {
                result += (end - start + 1)
                start = nums[i][0]
                end = nums[i][1]
            }
        }
        return result + (end - start + 1)
    }
}

Solution().numberOfPoints([[3,6],[1,5],[4,7]])
Solution().numberOfPoints([[1,3],[5,8]])
