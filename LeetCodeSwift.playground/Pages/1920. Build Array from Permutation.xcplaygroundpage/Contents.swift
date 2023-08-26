final class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        (0..<nums.count).map({ nums[nums[$0]] })
    }
}

Solution().buildArray([0,2,1,5,3,4])
Solution().buildArray([5,0,1,2,3,4])
