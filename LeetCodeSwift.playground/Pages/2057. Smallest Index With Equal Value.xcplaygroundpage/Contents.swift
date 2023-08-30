final class Solution {
    func smallestEqual(_ nums: [Int]) -> Int {
        nums.enumerated().first(where: { $0.offset % 10 == $0.element })?.offset ?? -1
    }
}

Solution().smallestEqual([0,1,2])
Solution().smallestEqual([4,3,2,1])
Solution().smallestEqual([1,2,3,4,5,6,7,8,9,0])
