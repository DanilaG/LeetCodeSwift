class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return 0
        }

        var index = 0
        var leftSum = 0
        var rightSum = nums.reduce(0, +)

        while index < nums.count {
            rightSum -= nums[index]
            
            guard leftSum != rightSum else {
                return index
            }

            leftSum += nums[index]
            index += 1
        }

        return -1
    }
}

Solution().pivotIndex([1,7,3,6,5,6])
