def reverseTree(tree)
    if tree = null
        return
    end
    tree.left, tree.right = tree.right, tree.left
    reverseTree(tree.left)
    reverseTree(tree.right)
end
