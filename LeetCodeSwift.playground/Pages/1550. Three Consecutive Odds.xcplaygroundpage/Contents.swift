final class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        guard arr.count > 2 else { return false }
        var odd: [Bool] = [arr[0] % 2 == 1, arr[1] % 2 == 1]
        for i in arr[2...] {
            let newVal = i % 2 == 1
            if newVal, odd[0], odd[1] { return true }
            odd[0] = odd[1]
            odd[1] = newVal
        }
        
        return false
    }
}

Solution().threeConsecutiveOdds([2,6,4,1])
Solution().threeConsecutiveOdds([1,2,34,3,4,5,7,23,12])
