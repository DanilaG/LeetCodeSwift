final class Solution {
    func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
        let n = 2 * k + 1
        guard k > 0 else { return nums }
        guard nums.count >= n else { return Array(repeating: -1, count: nums.count) }
        var sum = nums[0..<(n)].reduce(0, +)
        var mean = sum / n
        var results = [mean]
        guard nums.count > n else {
            return Array(repeating: -1, count: k) + results + Array(repeating: -1, count: k)
        }
        results.reserveCapacity(nums.count - n + 1)
        for i in (n..<nums.count) {
            sum += nums[i]
            sum -= nums[i - n]
            results.append(sum / n)
        }
        return Array(repeating: -1, count: k) + results + Array(repeating: -1, count: k)
    }
}

Solution().getAverages([7,4,3,9,1,8,5,2,6], 3)
Solution().getAverages([100000], 0)
Solution().getAverages([9], 100000)
