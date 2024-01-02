class Solution {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var counter = Array(repeating: 0, count: 201)
        var result = [[Int]]()
        for num in nums {
            if counter[num] >= result.count {
                result.append([])
            }
            result[counter[num]].append(num)
            counter[num] += 1
        }
        return result
    }
}

//Solution().findMatrix([1,3,4,1,2,3,1])
Solution().findMatrix([1,2,3,4])
