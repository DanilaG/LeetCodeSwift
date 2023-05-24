class Solution {
    func maxScore(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        let sorted = (0..<nums1.count).map({ [nums1[$0], nums2[$0]] }).sorted(by: { $0[1] > $1[1] })
        var sum = (sorted[0..<(k-1)]).reduce(0, { $0 + $1[0] })
        var maxVal = Int.min
        
        var heap = Heap(Array(sorted[0..<(k - 1)].map { $0[0] }))
        
       print(sorted)
        for index in (k - 1)..<sorted.count {
            sum += sorted[index][0]
            heap.insert(sorted[index][0])
            maxVal = max(maxVal, sum * sorted[index][1])
            print(maxVal, sum, sorted[index][1])
            sum -= heap.popMin()!
        }
        return maxVal
    }
}

import CoreFoundation
struct Heap<T> {
    var heap: CFBinaryHeap
    var count: Int {
        CFBinaryHeapGetCount(heap)
    }
    init(_ elements: [T] = []) {
        var callbacks = CFBinaryHeapCallBacks()
        callbacks.compare = { lp, rp, _ in
            let (lhs, rhs) = (lp!.load(as: Int.self), rp!.load(as: Int.self))
            return lhs == rhs ? .compareEqualTo : lhs < rhs ? .compareLessThan : .compareGreaterThan
        }
        heap = CFBinaryHeapCreate(nil, 0, &callbacks, nil)
        for element in elements {
            self.insert(element)
        }
    }
    
    func insert(_ val: T) {
        let pointer = UnsafeMutablePointer<T>.allocate(capacity: 1)
        pointer.initialize(to: val)
        CFBinaryHeapAddValue(heap, pointer)
    }

    func popMin() -> T? {
        guard let minPointer = CFBinaryHeapGetMinimum(heap) else { return nil }
        let minValue = minPointer.load(as: T.self)
        CFBinaryHeapRemoveMinimumValue(heap)
        minPointer.deallocate()
        return minValue
    }
}

// Solution().maxScore([1,3,3,2], [2,1,3,4], 3)
// Solution().maxScore([4,2,3,1,1], [7,5,10,9,6], 1)

Solution().maxScore([2,1,14,12], [11,7,13,6], 3)
