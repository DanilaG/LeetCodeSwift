final class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var mult = [Int](repeating: 0, count: arr.count)
        for i in 0..<arr.count {
            mult[i] = (arr.count - i + 1) / 2
            if i > 0 {
                mult[i] += mult[i - 1] - ((i + 1) / 2)
            }
        }
        return zip(arr, mult).reduce(0, { $0 + $1.0 * $1.1 })
    }
}

Solution().sumOddLengthSubarrays([1,4,2,5,3])
Solution().sumOddLengthSubarrays([1, 2, 3, 4, 5, 6])
Solution().sumOddLengthSubarrays([1,2])
Solution().sumOddLengthSubarrays([10,11,12])
