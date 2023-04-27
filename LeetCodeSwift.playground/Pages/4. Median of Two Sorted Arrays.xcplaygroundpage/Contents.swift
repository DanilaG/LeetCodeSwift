//class Solution {
//    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//        guard !nums1.isEmpty else { return median(nums2) }
//        guard !nums2.isEmpty else { return median(nums1) }
//
//        var n = nums1.count + nums2.count
//
//        var left = 0
//        var right = nums1.count - 1
//
//        while left < right {
//            let m = left + (right - left) / 2
//            isLess() ? (left = m + 1) : (right = m)
//        }
//
//        if left != 0 { left -= 1 }
//
//        if n % 2 == 0 {
//            nums1[left] + nums2[]
//        }
//    }
//
//    private func median(_ arr: [Int]) -> Double {
//        let n = arr.count
//        guard n > 1 else { return Double(arr.first ?? 0) }
//        let m = n / 2
//        guard n % 2 != 0 else { return Double((arr[m] + arr[m + 1])) / 2.0 }
//        return Double(arr[m + 1])
//    }
//
//    private func isLess(_ firstBorder: Int, _ nums1: [Int], _ nums2: [Int], _ n: Int) -> Bool {
//        var secondBorder = nums2.count - (n / 2 - (firstBorder + 1))
//        if nums2[secondBorder + 1]
//    }
//}


class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        guard nums1.count <= nums2.count else {
            return findMedianSortedArrays(nums2, nums1)
        }
        
        let total = nums1.count + nums2.count
        let half = total / 2
        print(total, half)
        
        var left = 0
        var right = nums1.count - 1
        
        while true {
            let i = right < 0 ? -1 : left + (right - left) / 2
            let j = half - i - 2
            
            let border1 = (i >= 0) ? nums1[i] : Int.min
            let next1 = ((i + 1) < nums1.count) ? nums1[i + 1] : Int.max
            let border2 = (j >= 0) ? nums2[j] : Int.min
            let next2 = ((j + 1) < nums2.count) ? nums2[j + 1] : Int.max
            
            if border1 <= next2 && border2 <= next1 {
                if (total % 2) == 1 {
                    return Double(min(next1, next2))
                }
                return Double(max(border1, border2) + min(next1, next2)) / 2.0
            }
            
            if border1 > next2 {
                right = i - 1
            } else {
                left = i + 1
            }
        }
        
        return 0
    }
}

Solution().findMedianSortedArrays([1, 3], [2,4])
