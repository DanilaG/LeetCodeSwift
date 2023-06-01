final class Solution {
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
        var k = k
        var num = num
        for i in (0..<num.count).reversed() {
            let n = k % 10
            let new = k % 10 + num[i]
            num[i] = new % 10
            if new > 9 {
                k += 10
            }
            k /= 10
        }
        
        while k != 0 {
            num.insert(k % 10, at: 0)
            k /= 10
        }
        
        return num
    }
}

Solution().addToArrayForm([1,2,0,0], 34)
Solution().addToArrayForm([2,7,4], 181)
Solution().addToArrayForm([2,1,5], 806)
Solution().addToArrayForm([9,9,9], 1)
Solution().addToArrayForm([0], 23)

