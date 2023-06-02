final class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        String(zip(s, indices).sorted(by: {$0.1 < $1.1}).map { $0.0 })
    }
}

Solution().restoreString("codeleet", [4,5,6,7,0,2,1,3])
