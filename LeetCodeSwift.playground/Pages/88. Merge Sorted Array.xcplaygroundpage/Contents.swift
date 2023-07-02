final class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var firstIndex = m - 1
        var secondIndex = n - 1
        for i in (0..<(m + n)).reversed() {
            let first = firstIndex >= 0 ? nums1[firstIndex] : Int.min
            let second = secondIndex >= 0 ? nums2[secondIndex] : Int.min
            if first > second {
                nums1[i] = first
                firstIndex -= 1
            } else {
                nums1[i] = second
                secondIndex -= 1
            }
        }
    }
}

//var nums1 = [1,2,3,0,0,0]
//Solution().merge(&nums1, 3, [2,5,6], 3)
//nums1

//var nums1 = [1]
//Solution().merge(&nums1, 1, [], 0)
//nums1

var nums1 = [0]
Solution().merge(&nums1, 0, [1], 1)
nums1
