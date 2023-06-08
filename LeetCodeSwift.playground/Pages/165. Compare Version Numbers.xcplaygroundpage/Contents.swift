final class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        var version1 = version1.split(separator: ".").map({Int.init($0)!})
        var version2 = version2.split(separator: ".").map({Int.init($0)!})

        for i in 0..<min(version1.count, version2.count) {
            if version1[i] < version2[i] { return -1 }
            if version1[i] > version2[i] { return 1 }
        }

        if version1.count > version2.count {
            for i in version2.count..<version1.count {
                guard version1[i] == 0 else { return 1 }
            }
        }

        if version2.count > version1.count {
            for i in version1.count..<version2.count {
                guard version2[i] == 0 else { return -1 }
            }
        }

        return 0
    }
}

Solution().compareVersion("1.01", "1.001")
Solution().compareVersion("1.0", "1.0.0")
Solution().compareVersion("1.0.0", "1.0")
Solution().compareVersion("1.0.1", "1.0")
Solution().compareVersion("1.0", "1.0.1")
Solution().compareVersion("1.02", "1.00")
Solution().compareVersion("0.1", "1.1")
