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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else { return false}
        if root.val == targetSum && root.left == nil && root.right == nil {
            return true
        }
        
        let needSum = targetSum - root.val
        return hasPathSum(root.left, needSum) || hasPathSum(root.right, needSum)
    }
}

// let n = TreeNode(5, TreeNode(4, TreeNode(11, TreeNode(7), TreeNode(2)), nil), TreeNode(8, TreeNode(4, nil, TreeNode(1)), TreeNode(13)))
// Solution().hasPathSum(n, 22)
let n = TreeNode(1, TreeNode(-2, TreeNode(1, TreeNode(-1), nil), TreeNode(3)), TreeNode(-3, TreeNode(-2), nil))
Solution().hasPathSum(n, -1)
