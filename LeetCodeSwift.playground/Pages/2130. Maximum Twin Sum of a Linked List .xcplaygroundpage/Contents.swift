
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

final class Solution {
  func pairSum(_ head: ListNode?) -> Int {
      let length = count(head)
      var buff = [Int]()
      buff.reserveCapacity(length / 2)
      var i = head
      for _ in 1...(length / 2) {
          buff.append(i?.val ?? 0)
          i = i?.next
      }
      var result = 0
      for _ in 1...(length / 2) {
          result = max(result, (buff.last ?? 0) + (i?.val ?? 0))
          i = i?.next
          buff.removeLast()
      }
      return result
  }

  private func count(_ head: ListNode?) -> Int {
      var i = head
      var counter = 0
      while i != nil {
          counter += 1
          i = i?.next
      }
      return counter
  }
}

// let n = ListNode(5, ListNode(4, ListNode(2, ListNode(1))))
let n = ListNode(4, ListNode(2, ListNode(2, ListNode(3))))
Solution().pairSum(n)
