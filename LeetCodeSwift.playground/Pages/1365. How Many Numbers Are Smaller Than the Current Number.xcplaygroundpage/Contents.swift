final class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let elements = nums.enumerated().sorted(by: { $0.1 < $1.1 })
        var result = [Int](Array(repeating: 0, count: nums.count))
        for i in (1..<elements.count) {
            if (elements[i - 1].1 == elements[i].1) {
                result[elements[i].0] = result[elements[i - 1].0]
            } else {
                result[elements[i].0] = i
            }
        }
        return result
    }
}

Solution().smallerNumbersThanCurrent([8,1,2,2,3])
Solution().smallerNumbersThanCurrent([6,5,4,8])
Solution().smallerNumbersThanCurrent([7,7,7,7])
