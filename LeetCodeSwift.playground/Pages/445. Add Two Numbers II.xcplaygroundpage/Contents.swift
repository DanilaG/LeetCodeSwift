
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
final class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1r = reversed(l1)
        var l2r = reversed(l2)
        var result: ListNode? = nil
        var offset = false
        while let l1 = l1r, let l2 = l2r {
            let sum = l1.val + l2.val + (offset ? 1 : 0)
            offset = sum > 9
            result = ListNode(sum % 10, result)
            l1r = l1.next
            l2r = l2.next
        }
        
        while let l1 = l1r {
            let sum = l1.val + (offset ? 1 : 0)
            offset = sum > 9
            result = ListNode(sum % 10, result)
            l1r = l1.next
        }
        
        while let l2 = l2r {
            let sum = l2.val + (offset ? 1 : 0)
            offset = sum > 9
            result = ListNode(sum % 10, result)
            l2r = l2.next
        }
        
        if offset {
            result = ListNode(1, result)
        }
        
        return result
    }
    
    private func reversed(_ l: ListNode?) -> ListNode? {
        var result: ListNode?
        revers(l, &result)
        return result
    }
    
    private func revers(_ l: ListNode?, _ reversed: inout ListNode?) {
        guard let l = l else { return }
        reversed = ListNode(l.val, reversed)
        revers(l.next, &reversed)
    }
}

//let l1 = ListNode(7, ListNode(2, ListNode(4, ListNode(3))))
//let l2 = ListNode(5, ListNode(6, ListNode(4)))

//let l1 = ListNode(2, ListNode(4, ListNode(3)))
//let l2 = ListNode(5, ListNode(6, ListNode(4)))

//let l1 = ListNode(0)
//let l2 = ListNode(0)

let l1 = ListNode(9)
let l2 = ListNode(1)
var result = Solution().addTwoNumbers(l1, l2)
while let r = result {
    print(r.val)
    result = r.next
}
