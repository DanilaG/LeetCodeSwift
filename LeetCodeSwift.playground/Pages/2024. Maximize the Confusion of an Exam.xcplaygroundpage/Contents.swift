final class Solution {
    func maxConsecutiveAnswers(_ answerKey: String, _ k: Int) -> Int {
        guard answerKey.count > 1 else { return 1 }
        let arr = answerKey.map { $0 }

        return max(
            maximize(arr, k),
            maximize(arr.map { $0 == "T" ? "F" : "T" }, k)
        )
    }

    private func maximize(_ answerKey: [Character], _ k: Int) -> Int {
        var left = 0
        var right = 0
        var k = k
        var counter = 0
        var maxCounter = 1
        let n = answerKey.count
        
        while true {
            while right < n, (answerKey[right] == "T" || k > 0){
                counter += 1
                if answerKey[right] != "T" { k -= 1 }
                right += 1
            }
            maxCounter = max(maxCounter, counter)
            guard right != n else { return maxCounter }
            
            while left < n, answerKey[left] == "T" {
                left += 1
                counter -= 1
            }
            guard left != n else { return maxCounter }
            
            left += 1
            counter -= 1
            k += 1
        }
    }
}

Solution().maxConsecutiveAnswers("TTFF", 2)
Solution().maxConsecutiveAnswers("TFFT", 1)
Solution().maxConsecutiveAnswers("TTFTTFTT", 1)
Solution().maxConsecutiveAnswers("TT", 1)
Solution().maxConsecutiveAnswers("FFFTTFTTFT", 3)
