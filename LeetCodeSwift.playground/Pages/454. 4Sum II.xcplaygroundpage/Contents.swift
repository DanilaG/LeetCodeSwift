class Solution {
    func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {
        var map = [Int: Int]()
        for i in nums1 {
            for j in nums2 {
                map[i + j, default: 0] += 1
            }
        }

        var result = 0
        for i in nums3 {
            for j in nums4 {
                guard let repeats = map[-i - j] else { continue }
                result += repeats
            }
        }

        return result
    }
}

Solution().fourSumCount([1, 2], [-2, -1], [-1, 2], [0, 2])
