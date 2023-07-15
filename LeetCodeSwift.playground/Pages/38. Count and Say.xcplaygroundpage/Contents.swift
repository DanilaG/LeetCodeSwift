final class Solution {
    func countAndSay(_ n: Int) -> String {
        countAndSayA(n).reduce("", { $0 + String($1) })
    }
    
    private func countAndSayA(_ n: Int) -> [Int] {
        guard n != 1 else { return [1] }
        guard n != 2 else { return [1, 1] }
        let prev = countAndSayA(n - 1)
        var last = prev.first!
        var count = 1
        var newResult = [Int]()
        for i in prev[1...] {
            if last == i {
                count += 1
            } else {
                newResult.append(count)
                newResult.append(last)
                last = i
                count = 1
            }
        }
        newResult.append(count)
        newResult.append(last)
        return newResult
    }
}

Solution().countAndSay(1)
Solution().countAndSay(4)
