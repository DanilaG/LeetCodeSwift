final class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        
        var best = 0
        
        while left < height.count && right > 0 {
            let newArea = min(height[left], height[right]) * abs(right - left)
            best = max(best, newArea)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return best
    }
}

Solution().maxArea([1,1])
