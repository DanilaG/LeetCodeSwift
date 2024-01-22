final class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var counter = Array(repeating: false, count: nums.count)
        var repeated = 0
        for num in nums {
            if counter[num - 1] {
                repeated = num
            }
            counter[num - 1] = true
        }
        return [
            repeated,
            counter.enumerated().first(where: { !$0.element })!.offset + 1
        ]
    }
}

Solution().findErrorNums([1,2,2,4])
