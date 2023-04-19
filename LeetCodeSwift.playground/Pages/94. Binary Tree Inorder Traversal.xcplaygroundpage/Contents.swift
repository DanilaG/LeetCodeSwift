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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return inorderTraversal(root.left) + [root.val] + inorderTraversal(root.right)
    }
}

let n = TreeNode(1, nil, TreeNode(2, TreeNode(3),nil))
Solution().inorderTraversal(n)
