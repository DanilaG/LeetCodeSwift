
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {
            return l2
        }
        
        guard let l2 = l2 else {
            return l1
        }
        
        let sum = l1.val + l2.val
        let overhead = sum / 10
        let number = sum % 10
        
        let result = ListNode(number)
        result.next = addTwoNumbers(l1.next, l2.next)
        if overhead > 0 {
            result.next = addTwoNumbers(ListNode(overhead), result.next)
        }
        return result
    }
}

let l1 = ListNode(9, ListNode(9))
let l2 = ListNode(9)

let r = Solution().addTwoNumbers(l1, l2)
print(r?.val)
print(r?.next?.val)
print(r?.next?.next?.val)
