public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        var a = list1
        var b = list2
        var last: ListNode? = ListNode(0)
        let result = last
        
        while
            let aVal = a?.val,
            let bVal = b?.val
        {
            if aVal < bVal {
                last?.next = ListNode(aVal)
                a = a?.next
            } else {
                last?.next = ListNode(bVal)
                b = b?.next
            }
            
            if last?.next == nil {
                break
            }
            
            last = last?.next
        }
        
        if a != nil {
            last?.next = a
        } else {
            last?.next = b
        }
        
        return result?.next
    }
}

let l = ListNode(1, ListNode(4))
let r = ListNode(2, nil)

let res = Solution().mergeTwoLists(r, l)
print(res?.val)
print(res?.next?.val)
print(res?.next?.next?.val)
