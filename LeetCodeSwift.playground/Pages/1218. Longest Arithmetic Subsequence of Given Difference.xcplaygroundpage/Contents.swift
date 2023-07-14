final class Solution {
    func longestSubsequence(_ arr: [Int], _ difference: Int) -> Int {
        guard !arr.isEmpty else { return 0 }
        var counterSnapshot = [Int: Int]()
        
        for element in arr.reversed() {
            let counter: Int
            if let prev = counterSnapshot[element + difference] {
                counter = prev + 1
            } else {
                counter = 1
            }
            if let current = counterSnapshot[element] {
                counterSnapshot[element] = max(current, counter)
            } else {
                counterSnapshot[element] = counter
            }
        }
        
        return (counterSnapshot.max(by: { $0.value < $1.value })?.value) ?? (arr.contains(difference) ? 1 : 0)
    }
}

//Solution().longestSubsequence([1,2,3,4], 1)
//Solution().longestSubsequence([1,3,5,7], 1)
Solution().longestSubsequence([1,5,7,8,5,3,4,2,1], -2)
