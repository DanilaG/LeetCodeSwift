class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var leftBound = 0
        var rightBound = nums.count - 1
        
        while (rightBound - leftBound) > 1 {
            let mid = (rightBound - leftBound) / 2 + leftBound
            guard nums[mid] != target else { return mid }
            if nums[mid] > target {
                rightBound = mid
            } else {
                leftBound = mid
            }
            print("\(leftBound) \(rightBound)")
        }
        
        guard nums[leftBound] != target else { return leftBound }
        guard nums[rightBound] != target else { return rightBound }

        return -1
    }
}

Solution().search([-1,0,3,5,9,12], 9)
