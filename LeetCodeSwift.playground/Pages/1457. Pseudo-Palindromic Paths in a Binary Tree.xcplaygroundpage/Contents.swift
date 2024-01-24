
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
    func pseudoPalindromicPaths(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        var buffer = Array(repeating: 0, count: 10)
        return pseudoPalindromicPaths(root, &buffer)
    }
    
    private func pseudoPalindromicPaths(_ root: TreeNode, _ counter: inout [Int]) -> Int {
        counter[root.val] += 1
        defer { counter[root.val] -= 1 }
        
        guard root.left != nil || root.right != nil else {
            return isPseudoPalindromic(counter) ? 1 : 0
        }
        
        return (root.left.flatMap { pseudoPalindromicPaths($0, &counter) } ?? 0) +
            (root.right.flatMap { pseudoPalindromicPaths($0, &counter) } ?? 0)
    }
    
    private func isPseudoPalindromic(_ counter: [Int]) -> Bool {
        return counter.reduce(0, { $0 + ($1 % 2 == 1 ? 1 : 0) }) < 2
    }
}
