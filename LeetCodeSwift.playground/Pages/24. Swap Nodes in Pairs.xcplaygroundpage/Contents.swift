
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

final class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else { return head }
        
        let newHead = head?.next
        head?.next = newHead?.next
        newHead?.next = head
        var a = newHead?.next
        var b = newHead?.next?.next
        var c = newHead?.next?.next?.next
        
        while let second = c {
            a?.next = second
            b?.next = second.next
            second.next = b

            a = b
            c = b?.next?.next
            b = b?.next
        }

        return newHead
    }
}

// var n = ListNode(1, ListNode(2, ListNode(3, ListNode(4))))
// var n: ListNode? = nil
// var n = ListNode(1)
// var n = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
// var n = ListNode(1, ListNode(2))
// var n = ListNode(1, ListNode(2, ListNode(3)))
var n = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6))))))
var result = Solution().swapPairs(n)

while let next = result {
    print(next.val)
    result = result?.next
}
