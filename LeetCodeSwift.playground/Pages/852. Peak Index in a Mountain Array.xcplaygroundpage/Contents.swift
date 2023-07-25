final class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var left = 1
        var right = arr.count - 1
        while !((arr[left - 1] < arr[left]) && (arr[left] > arr[left + 1])) {
            var mead = left + (right - left) / 2
            guard left != mead else {
                left += 1
                break
            }
            
            print(mead)
            if (arr[mead - 1] < arr[mead]) && (arr[mead] < arr[mead + 1]) {
                left = mead
                continue
            }
            
            if (arr[mead - 1] > arr[mead]) && (arr[mead] > arr[mead + 1]) {
                right = mead
                continue
            }
            
            left = mead
        }
        return left
    }
}

// Solution().peakIndexInMountainArray([0,1,0])
Solution().peakIndexInMountainArray([-1,0,1,2,0])
