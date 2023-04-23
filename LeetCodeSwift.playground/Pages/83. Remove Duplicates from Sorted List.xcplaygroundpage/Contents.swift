public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

final class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var prev = head
        var next = head?.next
        let result = prev

        while let node = next {
            if prev?.val != node.val {
                prev?.next = node
                prev = node
            }
            next = node.next
        }

        prev?.next = nil
        return result
    }
}

// let h = ListNode(1, ListNode(1))
// let h = ListNode(1, ListNode(1, ListNode(2)))
let h = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
var r = Solution().deleteDuplicates(h)

while let a = r {
    print(a.val)
    r = a.next
}
