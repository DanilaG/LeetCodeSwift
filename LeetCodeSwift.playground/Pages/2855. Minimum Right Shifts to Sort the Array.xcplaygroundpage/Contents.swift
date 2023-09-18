final class Solution {
    func minimumRightShifts(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var minIndex: Int?
        for i in 0..<nums.count {
            let next = (i + 1) % nums.count
            if nums[i] > nums[next] {
                guard minIndex == nil else { return -1 }
                minIndex = next
            }
        }
        if minIndex == 0 { return 0 }
        return minIndex.flatMap({ nums.count - $0 }) ?? -1
    }
}

 Solution().minimumRightShifts([3,4,5,1,2])
 Solution().minimumRightShifts([1,3,5])
Solution().minimumRightShifts([2,1,4])
