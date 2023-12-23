public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var left = head
        var current = head
        for _ in 0..<n {
            current = current?.next
        }

        guard current != nil else {
            return head?.next
        }
        current = current?.next

        while current != nil {
            current = current?.next
            left = left?.next
        }

        left?.next = left?.next?.next
        return head
    }
}

let node = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
let result = Solution().removeNthFromEnd(node, 2)

//let node = ListNode(1)
//let result = Solution().removeNthFromEnd(node, 1)

//let node = ListNode(1, ListNode(2))
//let result = Solution().removeNthFromEnd(node, 1)

var i = result
while i != nil {
    print(i?.val)
    i = i?.next
}
