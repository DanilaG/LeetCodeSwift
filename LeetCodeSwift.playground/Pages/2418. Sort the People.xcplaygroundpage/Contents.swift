final class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        zip(names, heights).sorted(by: { $0.1 > $1.1 }).map({ $0.0 })
    }
}

Solution().sortPeople(["Mary","John","Emma"], [180,165,170])
Solution().sortPeople(["Alice","Bob","Bob"], [155,185,150])
