class KthLargest {
    
    var prefix = [Int]()
    
    init(_ k: Int, _ nums: [Int]) {
        var nums = nums
        if nums.count < k {
            nums.append(Int.min)
        }
        prefix = Array(nums.sorted(by: >)[0..<k])
    }
    
    func add(_ val: Int) -> Int {
        prefix.append(val)
        prefix = prefix.sorted(by: >)
        prefix.removeLast()
        return prefix.last!
    }
}

//var kthLargest = KthLargest(3, [4, 5, 8, 2])
//kthLargest.add(3);   // return 4
//kthLargest.add(5);   // return 5
//kthLargest.add(10);  // return 5
//kthLargest.add(9);   // return 8
//kthLargest.add(4);   // return 8


var kthLargest = KthLargest(1, [])
kthLargest.add(-3);   // return 4
kthLargest.add(-2);   // return 5
kthLargest.add(10);  // return 5
kthLargest.add(9);   // return 8
kthLargest.add(4);   // return 8
