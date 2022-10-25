/// Binary tree node
///
///

enum Node {
    case left
    case right
}

class TreeNode {
    var data: Int
    var leftNode: TreeNode?
    var rightNode: TreeNode?
    
    init(with data: Int, leftNode: TreeNode? = nil, rightNode: TreeNode? = nil) {
        self.data = data
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
    

}

class BinaryTree {
    
    var root: TreeNode?
    
    init() {
        self.root = nil
    }
    
    /// Find height of given binary tree
    func getHeight(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        
        let nodeA = getHeight(node.leftNode)
        let nodeB = getHeight(node.rightNode)

        return nodeA > nodeB ? nodeA + 1 : nodeB + 1
    }
}

func addNode(in node: TreeNode?, direction: Node, value: Int) {
    guard let node = node else { return }

    switch direction {
    case .left:
        node.leftNode = TreeNode(with: value)
    case .right:
        node.rightNode = TreeNode(with: value)
    }
}



let tree: BinaryTree = BinaryTree()

tree.root = TreeNode(with: 1)
addNode(in: tree.root, direction: .left, value: 2)
addNode(in: tree.root, direction: .right, value: 3)
addNode(in: tree.root?.rightNode, direction: .right, value: 6)
addNode(in: tree.root?.rightNode, direction: .left, value: 5)
addNode(in: tree.root?.leftNode, direction: .left, value: 4)
addNode(in: tree.root?.leftNode?.leftNode, direction: .right, value: 7)
addNode(in: tree.root?.rightNode?.rightNode, direction: .left, value: 8)
addNode(in: tree.root?.rightNode?.rightNode?.leftNode, direction: .right, value: 9)

print(tree.getHeight(tree.root))



