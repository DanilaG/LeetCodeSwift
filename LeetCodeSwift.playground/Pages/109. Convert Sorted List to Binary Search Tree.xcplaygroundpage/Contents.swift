public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
      self.val = val
      self.left = left
      self.right = right
  }
}

func print(_ head: TreeNode?) {
    guard let head else { return }
    print("\(head.val), \(head.left?.val), \(head.right?.val)")
    print(head.left)
    print(head.right)
}

//final class Solution {
//    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
//        guard head != nil else { return nil }
//        let n = count(head)
//
//        var node = head
//        var treeHead: TreeNode? = nil
//        for _ in 0...(n / 2) {
//            let newTreeNode = TreeNode(node!.val, treeHead, nil)
//            treeHead = newTreeNode
//            node = node?.next
//        }
//
//        while let newNode = node {
//            treeHead?.right = TreeNode(newNode.val, treeHead?.right, nil)
//            node = node?.next
//        }
//
//        return treeHead
//    }
//
//    private func count(_ head: ListNode?) -> Int {
//        var counter = 0
//        var node = head
//        while node != nil {
//            counter += 1
//            node = node?.next
//        }
//        return counter
//    }
//}

final class Solution {
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        guard let head else { return nil }
        guard head.next != nil else { return TreeNode(head.val) }
        
        var firstPartEnd = head
        var first = head
        var second: ListNode? = head
        while second?.next != nil {
            firstPartEnd = first
            first = first.next!
            second = second?.next?.next
        }
        
        firstPartEnd.next = nil
        return TreeNode(first.val, sortedListToBST(head), sortedListToBST(first.next))
    }
}

// let list = ListNode(-10, ListNode(-3, ListNode(0, ListNode(5, ListNode(9)))))
// let list = ListNode(-10, ListNode(-3))
//let list: ListNode? = nil
let list = ListNode(0, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))
let tree = Solution().sortedListToBST(list)
print(tree)
