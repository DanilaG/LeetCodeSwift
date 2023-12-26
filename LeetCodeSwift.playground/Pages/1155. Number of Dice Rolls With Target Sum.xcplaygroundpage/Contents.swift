class Solution {
    func numRollsToTarget(_ n: Int, _ k: Int, _ target: Int) -> Int {
        var old = [0:1]
        var new = [Int:Int]()

        for n in (1...n).reversed() {
            for i in (1...k) {
                for (key, value) in old {
                    let newKey = key + i
                    guard newKey <= target, newKey >= (target - n * k) else { continue }
                    new[newKey] = (new[newKey, default: 0] + value) % 1_000_000_007
                }
            }
            old = new
            new = [:]
        }

        return old[target, default: 0]
    }
}

//Solution().numRollsToTarget(2, 6, 7)
Solution().numRollsToTarget(30, 30, 500)
