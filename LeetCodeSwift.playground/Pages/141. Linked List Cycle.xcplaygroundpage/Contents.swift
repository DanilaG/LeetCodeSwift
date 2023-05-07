public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


final class Solution {
  func hasCycle(_ head: ListNode?) -> Bool {
      var first = head
      var second = head?.next

      while let a = first, let b = second {
          if a === b { return true }
          first = a.next
          second = b.next?.next
      }

      return false
  }
}

let a = ListNode(3)
a.next = ListNode(2)
a.next?.next = ListNode(0)
a.next?.next?.next = ListNode(-4)
a.next?.next?.next = a.next

Solution().hasCycle(a)
