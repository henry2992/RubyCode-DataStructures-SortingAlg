


class Treenode

	attr_accessor :value, :right, :left

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end

	def is_leaf?
		!has_left_child? && !has_right_child?
	end

	def has_right_child?
		@right != nil
	end

	def has_left_child?
		@left != nil
	end
	
end

class BinaryTree 


	def initialize(value)
		@root = Treenode.new(value)
	end

	def add(value)

		current = @root

		while current != nil
			#If it is left find the left nodes else find the rights
			if (value < current.value ) && (current.left == nil)
				current.left = Treenode.new(value)
			elsif (value > current.value ) && (current.right == nil)
				current.right = Treenode.new(value)
			elsif (value < current.value)		
				current = current.left
			elsif (value > current.value)
				current = current.right
			else
				return
			end
		end

		
	end

	def find(value)

		current = @root

		while current != nil

			if value == current.value
				return current
			elsif (value < current.value)
				current = current.left
			else
				current = current.right
			end

		end
		
	end

	def inOrderTraversal(node = @root)

        if (node != nil)
	        inOrderTraversal(node.left)
	        puts node.value.to_s
	        inOrderTraversal(node.right)
	        
    	end
    end

	def postOrderTraversal(node = @root)

        if (node != nil)
	        postOrderTraversal(node.left)
	        postOrderTraversal(node.right)
	        puts node.value
    	end
    end	

    def preOrderTraversal(node = @root)

        if (node != nil)
        	puts node.value
	        preOrderTraversal(node.left)
	        preOrderTraversal(node.right)
	        
    	end
    end	

     def size(node = @root)
      size = 1
      size += 1  unless node.left.nil?
      size += 1 unless node.right.nil?
      size
    end
   
   	def diameter(node = @root)  
    
	    if (node == nil)   
	        return 0;  
	    end

	    leftD  = diameter(node.left);  
	    rightD = diameter(node.right);  
	    rootD  = (node.left).size + (node.right).size + 1;  
	  
	    return max(rootD, Math.max(leftD, rightD));  

	end  

    
	
	
end

tree = BinaryTree.new(10)
tree.add(7)
tree.add(4)
tree.add(8)
tree.add(20)
tree.add(11)

puts tree.diameter

# tree.preOrderTraversal
