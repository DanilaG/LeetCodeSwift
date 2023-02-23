public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var i = head
        var mid = head
        var isSecond = false
        
        while i?.next != nil {
            i = i?.next
            isSecond.toggle()
            if isSecond {
                mid = mid?.next
            }
        }
        
        return mid
    }
}

let l = ListNode(1, ListNode(4, ListNode(5, ListNode(6))))

let res = Solution().middleNode(l)
print(res?.val)
