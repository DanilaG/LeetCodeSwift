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

final class Solution {
  func isSymmetric(_ root: TreeNode?) -> Bool {
      symetric(root?.left, root?.right)
  }

  private func symetric(_ l: TreeNode?, _ r: TreeNode?) -> Bool {
      guard l?.val == r?.val else { return false }
      guard let l = l, let r = r else { return true }
      return symetric(l.left, r.right) && symetric(r.left, l.right)
  }
}

// let node = TreeNode(1, TreeNode(2, TreeNode(3), TreeNode(4)), TreeNode(2, TreeNode(4), TreeNode(3)))
let node = TreeNode(1, TreeNode(2, nil, TreeNode(3)), TreeNode(2, nil, TreeNode(3)))
Solution().isSymmetric(node)
