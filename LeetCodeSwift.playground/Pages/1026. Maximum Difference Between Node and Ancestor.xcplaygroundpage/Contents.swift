
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
    func maxAncestorDiff(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        return max(
            maxDiff(root.left, min: root.val, max: root.val),
            maxDiff(root.right, min: root.val, max: root.val)
        )
    }
    
    private func maxDiff(_ root: TreeNode?, min minFromTree: Int, max maxFromTree: Int) -> Int {
        guard let root else { return 0 }
        let minVal = min(minFromTree, root.val)
        let maxVal = max(maxFromTree, root.val)
        return max(
            maxDiff(root.left, min: minVal, max: maxVal),
            maxDiff(root.right, min: minVal, max: maxVal),
            abs(maxVal - root.val),
            abs(minVal - root.val)
        )
    }
}

1026. Maximum Difference Between Node and Ancestor
