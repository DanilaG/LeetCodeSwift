final class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var i = 1
        var result = [Int]()
        while i < nums.count {
            result += Array(repeating: nums[i], count: nums[i - 1])
            i += 2
        }
        return result
    }
}

Solution().decompressRLElist([1,2,3,4])
Solution().decompressRLElist([1,1,2,3])
