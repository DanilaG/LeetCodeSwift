final class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        accounts.map({ $0.reduce(0, +) }).max()!
    }
}

Solution().maximumWealth([[1,2,3],[3,2,1]])
Solution().maximumWealth([[1,5],[7,3],[3,5]])
