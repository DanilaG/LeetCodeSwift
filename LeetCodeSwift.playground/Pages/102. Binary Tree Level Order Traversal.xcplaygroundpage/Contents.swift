
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
    
    private var result = [[Int]]()
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return []}
        result.append(root)
        addChild(root, level: 0)
        return result
    }
    
    private func addChild(_ root: TreeNode?, level: Int) {
        guard let root = root else { return }
        
        var subArray = [
            root.left,
            root.right
        ].flatMap {
            $0.val
        }
        
        if !subArray.isEmpty {
            if level = result.count {
                result.append(subArray)
            } else {
                result[level + 1] += subArray
            }
            addChild(root.left)
            addChild(root.right)
        }
    }
}
