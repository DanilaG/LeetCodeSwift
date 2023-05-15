public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

class Solution {
   func swapNodes(_ head: ListNode?, _ k: Int) -> ListNode? {
       let newHead: ListNode? = ListNode(0, head)
       var a = newHead
       var b = newHead

       if k > 1 {
           for _ in 1...(k - 1) {
               a = a?.next
           }
       }

       var counter = 1
       var p = a
       while p?.next?.next != nil {
           p = p?.next
           b = b?.next
           counter += 1
       }
       
       if counter == k {
           return head
       } else if counter > k {
           swap(a, b)
       } else {
           swap(b, a)
       }
       
       return newHead?.next
   }
    
    private func swap(_ a: ListNode?, _ b: ListNode?) {        
        let aNext = a?.next
        let aTail = a?.next?.next
        let bTail = b?.next?.next
        
        if a?.next === b || b?.next === a {
            a?.next = b?.next
            a?.next?.next = aNext
            a?.next?.next?.next = bTail
        } else {
            a?.next = b?.next
            a?.next?.next = aTail
            b?.next = aNext
            b?.next?.next = bTail
        }
    }
}

//let head = ListNode(1, ListNode(2, ListNode(3, ListNode(4))))
//var p = Solution().swapNodes(head, 2)

//let head = ListNode(100, ListNode(99))
//var p = Solution().swapNodes(head, 2)

let head = ListNode(7,ListNode(9, ListNode(6, ListNode(6, ListNode(7, ListNode(8, ListNode(3, ListNode(0, ListNode(9, ListNode(5))))))))))
var p = Solution().swapNodes(head, 5)

while p != nil {
    print(p?.val)
    p = p?.next
}
