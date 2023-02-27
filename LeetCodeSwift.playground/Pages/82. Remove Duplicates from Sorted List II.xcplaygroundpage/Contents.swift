public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        let result = ListNode(0)
        
        var currentInList: ListNode? = head
        var currentResult = result
        
        while let current = currentInList {
            print(current.val, current.next?.val)
            guard (current.val != current.next?.val) ?? false else {
                var nextNew = current.next?.next
                while current.val == nextNew?.val { nextNew = nextNew?.next }
                currentInList = nextNew
                continue
            }
            let resultNext = ListNode(current.val)
            currentResult.next = resultNext
            currentResult = resultNext
            currentInList = current.next
        }
        
        return result.next
    }
}

let r = Solution().deleteDuplicates(
    ListNode(1,ListNode(1, ListNode(1, ListNode(2 ,(ListNode(3))))))
)
print(r?.val, r?.next?.val, r?.next?.next?.val, r?.next?.next?.next?.val, r?.next?.next?.next?.next?.val)
