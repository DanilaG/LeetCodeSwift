final class Solution {
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        let nums1 = Set(nums1)
        let nums2 = Set(nums2)
        let nums3 = Set(nums3)
        
        return Array(nums1.intersection(nums2).union(nums2.intersection(nums3)).union(nums3.intersection(nums1)))
    }
}

Solution().twoOutOfThree([1,1,3,2], [2,3], [3])
Solution().twoOutOfThree([3,1], [2,3], [1,2])
Solution().twoOutOfThree([1,2,2], [4,3,3], [5])
