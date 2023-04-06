final class Solution {

    private let n: Int
    private let nums: [Int]
    private let set: Set<Int>
    
    init(_ nums: [Int]) {
        self.n = nums.count
        self.nums = nums
        self.set = Set(nums)
    }
    
    func reset() -> [Int] {
        nums
    }
    
    func shuffle() -> [Int] {
        // nums.shuffled()
        
        var result: [Int] = []
        result.reserveCapacity(n)
        var set = self.set
        
        while let element = set.randomElement() {
            result.append(element)
            set.remove(element)
        }
        
        return result
    }
}

Solution([1, 2, 3]).shuffle()
