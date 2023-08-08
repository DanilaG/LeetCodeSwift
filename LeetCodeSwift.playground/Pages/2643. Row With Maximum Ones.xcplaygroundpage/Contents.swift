final class Solution {
    func rowAndMaximumOnes(_ mat: [[Int]]) -> [Int] {
        var maxArr = [0, 0]
        mat.enumerated().forEach { index, arr in
            let ones = arr.reduce(0, { $0 + $1 })
            if maxArr[1] < ones {
                maxArr = [index, ones]
            }
        }
        return maxArr
    }
}

Solution().rowAndMaximumOnes([[0,1],[1,0]])
Solution().rowAndMaximumOnes([[0,0,0],[0,1,1]])
Solution().rowAndMaximumOnes([[0,0],[1,1],[0,0]])
