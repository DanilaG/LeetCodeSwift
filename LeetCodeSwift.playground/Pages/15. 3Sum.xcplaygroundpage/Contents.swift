final class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sorted = nums.sorted()
        var result: [[Int]] = []
        
        for first in 0..<(sorted.count - 2) {
            guard first == 0 || sorted[first] != sorted[first - 1] else {
                continue
            }
            
            var left = first + 1
            var right = sorted.count - 1
            
            let target = sorted[first]
            while left < right {
                let sum = sorted[left] + sorted[right]
                
                guard sum != -target else {
                    result.append([sorted[first], sorted[left], sorted[right]])
                    
                    left += 1
                    right -= 1
                    
                    while left < right && sorted[left] == sorted[left - 1] {
                        left += 1
                    }
                    while left < right && sorted[right] == sorted[right + 1] {
                        right -= 1
                    }
                    
                    continue
                }
                
                if sum < -target {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        
        return result
    }
}

Solution().threeSum([3,0,-2,-1,1,2])
