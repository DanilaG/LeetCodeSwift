final class Solution {
    func maxLength(_ arr: [String]) -> Int {
        let sets: [Set<Character>] = arr.compactMap({
            let set = Set($0)
            guard set.count == $0.count else { return nil }
            return set
        })
        return maxSubArray(0, sets, [])
    }
    
    private func maxSubArray(_ index: Int, _ arr: [Set<Character>], _ set: Set<Character>) -> Int {
        guard index < arr.count else { return 0 }
        let val = arr[index]
        if val.intersection(set).isEmpty {
            let omit = maxSubArray(index + 1, arr, set)
            let include = maxSubArray(index + 1, arr, set.union(val)) + val.count
            return max(omit,include)
        } else {
            return maxSubArray(index + 1, arr, set)
        }
    }
}

Solution().maxLength(["un","iq","ue"])
