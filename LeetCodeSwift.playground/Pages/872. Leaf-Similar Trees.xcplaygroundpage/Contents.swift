
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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        guard let root1 else { return root2 == nil }
        guard let root2 else { return false }
        
        var root1Leafs = [Int]()
        leafs(root1, &root1Leafs)
        
        var root2Leafs = [Int]()
        leafs(root2, &root2Leafs)
        
        return root1Leafs == root2Leafs
    }
    
    private func leafs(_ root: TreeNode, _ result: inout [Int]) {
        if root.left == nil, root.right == nil {
            result.append(root.val)
            return
        }
        
        root.left.flatMap({ leafs($0, &result) })
        root.right.flatMap({ leafs($0, &result) })
    }
}

Solution().leafSimilar(
    TreeNode(1, TreeNode(2), TreeNode(3)),
    TreeNode(1, TreeNode(2), TreeNode(3))
)

Solution().leafSimilar(
    TreeNode(1, TreeNode(3), TreeNode(2)),
    TreeNode(1, TreeNode(2), TreeNode(3))
)
