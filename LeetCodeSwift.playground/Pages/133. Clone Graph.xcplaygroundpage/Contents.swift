
  public class Node {
      public var val: Int
      public var neighbors: [Node?]
      public init(_ val: Int) {
          self.val = val
          self.neighbors = []
      }
 }
 

class Solution {
    private var copies: [Int: Node] = [:]
    
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node else { return nil }
        
        if let copy = copies[node.val] {
            return copy
        }
        
        let result = Node(node.val)
        result.neighbors.reserveCapacity(node.neighbors.count)
        copies[node.val] = result
        
        for childe in node.neighbors {
            result.neighbors.append(cloneGraph(childe))
        }
            
        return result
    }
}


let nodes = (0...4).map { Node($0) }

nodes[1].neighbors.append(contentsOf: [nodes[2], nodes[4]])
nodes[2].neighbors.append(contentsOf: [nodes[1], nodes[3]])
nodes[3].neighbors.append(contentsOf: [nodes[2], nodes[4]])
nodes[4].neighbors.append(contentsOf: [nodes[1], nodes[3]])

let result = Solution().cloneGraph(nodes[1])
