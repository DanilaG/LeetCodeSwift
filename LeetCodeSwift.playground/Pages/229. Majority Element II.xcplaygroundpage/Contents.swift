class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var first = 0
        var firstCounter = 0
        var second = 0
        var secondCounter = 0

        for i in nums {
            switch i {
            case first:
                firstCounter += 1
            case second:
                secondCounter += 1
            default:
                guard firstCounter != 0 else {
                    first = i
                    firstCounter = 1
                    continue
                }
                guard secondCounter != 0 else {
                    second = i
                    secondCounter = 1
                    continue
                }
                firstCounter -= 1
                secondCounter -= 1
            }
        }
        
        let target = nums.count / 3
        
        return [
            nums.reduce(0, { $0 + ($1 == first ? 1 : 0) }) > target ? first : nil,
            (first != second && nums.reduce(0, { $0 + ($1 == second ? 1 : 0) }) > target) ? second : nil
        ].compactMap({ $0 })
    }
}

Solution().majorityElement([3,2,3])
Solution().majorityElement([1])
Solution().majorityElement([1, 2])
Solution().majorityElement([0, 0, 0])
