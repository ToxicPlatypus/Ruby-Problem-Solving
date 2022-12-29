class Tree
    def initialize(data, left = nil, right = nil)
        data = data
        left = left
        right = right
    end
    
    def dfsPreorder(root)
       if root == nil
        return
       end
       puts(root.data)
       dfsPreorder(root.left) 
       dfsPreorder(root.right) 
    end

    def dfsPreorder(root)
       if root == nil
        return
       end
       dfsPreorder(root.left) 
       puts(root.data)  
       dfsPreorder(root.right) 
    end

    def dfsPreorder(root)
       if root == nil
        return
       end
       dfsPreorder(root.left) 
       dfsPreorder(root.right)
       puts(root.data) 
    end
end