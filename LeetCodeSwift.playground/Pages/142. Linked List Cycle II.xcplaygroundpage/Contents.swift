public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    class Solution {
        func detectCycle(_ head: ListNode?) -> ListNode? {
            var slow = head?.next
            var fast = head?.next?.next
            
            while slow !== fast {
                guard fast != nil else { return nil }
                slow = slow?.next
                fast = fast?.next?.next
            }
            
            slow = head
            while slow !== fast {
                slow = slow?.next
                fast = fast?.next
            }
            
            return fast
        }
    }
}

var s = ListNode(5)
let s2 =  ListNode(2, ListNode(3, ListNode(4, s)))
s.next = s2
let l = ListNode(1, s2)

let res = Solution().detectCycle(l)
print(res?.val)
