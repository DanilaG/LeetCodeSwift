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

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p?.val == q?.val else { return false }
        guard p != nil else { return true }
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}

let l = TreeNode(1, TreeNode(2), TreeNode(3))
let r = TreeNode(1, TreeNode(2), TreeNode(3))
Solution().isSameTree(l, r)
