final class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        Set<Int>(nums).count != nums.count
    }
}
