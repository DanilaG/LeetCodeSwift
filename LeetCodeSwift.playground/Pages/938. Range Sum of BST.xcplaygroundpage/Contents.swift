
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
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root else { return 0 }
        return rangeSumBST(root.left, low, high) +
            rangeSumBST(root.right, low, high) +
            ((low <= root.val && root.val <= high) ? root.val : 0)
    }
}

let tree = TreeNode(10, TreeNode(5, TreeNode(3), TreeNode(7)), TreeNode(15, nil, TreeNode(18)))
let result = Solution().rangeSumBST(tree, 7, 15)
