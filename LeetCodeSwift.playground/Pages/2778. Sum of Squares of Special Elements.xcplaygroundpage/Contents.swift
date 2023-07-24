final class Solution {
    func sumOfSquares(_ nums: [Int]) -> Int {
        let n: Int = nums.count
        return (1...n).reduce(0, { (number: Int, index: Int) in
            let i = index - 1
            return number + ((n % index == 0) ? (nums[i] * nums[i]) : 0)
        })
    }
}

Solution().sumOfSquares([1,2,3,4])
Solution().sumOfSquares([2,7,1,19,18,3])
