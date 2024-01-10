
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
    func amountOfTime(_ root: TreeNode?, _ start: Int) -> Int {
        var nodes: [TreeNode] = root.flatMap({ [$0] }) ?? []
        var map = [Int:[Int]]()
        
        while !nodes.isEmpty {
            var nextNodes = [TreeNode]()
            for node in nodes {
                if let left = node.left {
                    map[left.val, default: []].append(node.val)
                    map[node.val, default: []].append(left.val)
                    nextNodes.append(left)
                }
                if let right = node.right {
                    map[right.val, default: []].append(node.val)
                    map[node.val, default: []].append(right.val)
                    nextNodes.append(right)
                }
            }
            nodes = nextNodes
        }
        print(map)
        return far(map, from: nil, for: start)
    }
    
    private func far(_ tree: [Int:[Int]], from: Int?, for forNode: Int) -> Int {
        var result = 0
        for node in (tree[forNode] ?? []) where node != from {
            result = max(result, far(tree, from: forNode, for: node) + 1)
        }
        return result
    }
}

let result1 = Solution().amountOfTime(
    TreeNode(1,
             TreeNode(5,
                      nil,
                      TreeNode(4, TreeNode(9), TreeNode(2))
                     ),
             TreeNode(3, TreeNode(10), TreeNode(6))
            ),
    3
)

let result2 = Solution().amountOfTime(TreeNode(1), 1)
