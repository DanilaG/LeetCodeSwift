final class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var gratest = [Int: Int]()
        for i in (0..<nums2.count).reversed() {
            var j = i + 1
            while j < nums2.count {
                if nums2[j] > nums2[i] {
                    gratest[nums2[i]] = j
                    break
                }
                j = gratest[nums2[j]] ?? (j + 1)
            }
        }
        return nums1.map { gratest[$0].flatMap({ nums2[$0] }) ?? -1 }
    }
}

Solution().nextGreaterElement([4,1,2], [1,3,4,2])
Solution().nextGreaterElement([2,4], [1,2,3,4])
