
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
    func checkTree(_ root: TreeNode?) -> Bool {
        guard
            let val = root?.val,
            let left = root?.left?.val,
            let right = root?.right?.val
        else { return false }
        return val == (left + right)
    }
}
