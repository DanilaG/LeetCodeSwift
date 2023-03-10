class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum = 0
        return nums.map {
            sum += $0
            return sum
        }
    }
}

Solution().runningSum([1, 2, 3])
