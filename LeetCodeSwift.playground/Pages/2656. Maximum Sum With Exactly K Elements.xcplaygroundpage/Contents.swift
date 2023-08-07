final class Solution {
    func maximizeSum(_ nums: [Int], _ k: Int) -> Int {
        nums.max()! * k + (k / 2 * (k - 1)) + ((k % 2 == 1) ? k / 2 : 0)
    }
}

Solution().maximizeSum([1,2,3,4,5], 3)
Solution().maximizeSum([5, 5,5], 2)
