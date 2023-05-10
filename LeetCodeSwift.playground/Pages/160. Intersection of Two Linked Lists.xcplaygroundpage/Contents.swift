public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


final class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        let countA = count(headA)
        let countB = count(headB)

        var pointerA = headA
        var pointerB = headB

        if countA < countB {
            for _ in 1...(countB - countA) { pointerB = pointerB?.next }
        } else if countA > countB  {
            for _ in 1...(countA - countB) { pointerA = pointerA?.next }
        }
        
        while let a = pointerA, let b = pointerB {
            if a === b { return a }
            pointerA = a.next
            pointerB = b.next
        }
        
        return nil
    }
    
    private func count(_ head: ListNode?) -> Int {
        var counter = 0
        var pointer = head
        while pointer != nil {
            counter += 1
            pointer = pointer?.next
        }
        return counter
    }
}

var common = ListNode(1)
var a = ListNode(2)
a.next = common
var b = common

Solution().getIntersectionNode(a, b)
