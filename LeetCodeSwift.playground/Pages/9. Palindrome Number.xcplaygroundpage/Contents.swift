final class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var arr = Array(String(x))
        var left = 0
        var right = arr.count - 1
        
        while left < right {
            guard arr[left] == arr[right] else { return false }
            left += 1
            right -= 1
        }

        return true
    }
}

Solution().isPalindrome(121)
Solution().isPalindrome(-121)
Solution().isPalindrome(10)
