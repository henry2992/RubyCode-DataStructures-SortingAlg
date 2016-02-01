class TreeNode

	attr_accessor :value, :parent, :children
	
	def initialize(value)
		
		@value = value

		@parent = parent
      	# raise "parent must be a TreeNode" unless @parent.nil? || @parent.class == TreeNode
		
		@children = []

	end

	def add_child (child) 
		child.parent = self
		@children << child	
	end

	def child_count
		@children.size
	end
	
	def is_root?
		parent.nil?
	end

	def is_leaf?
		@children.empty?
	end

	#
	  # Return all the leaf nodes having the current node as an ancestor.
	  #
	  def leaves
	    outp = Array.new
	    
	    @children.each do |child|
	      if child.is_leaf?
	        outp << child.value
	      else
	      	outp << child.value
	        outp << child.leaves
	      end

	    end

	    outp
	  end

	  def tree_traversal(depth=0)
	    
	    
	    node_value = self.value
	    

	    if depth > 0
	      outp = "#{ (["     "] * (depth-1)).join("|")}|--->#{node_value}\n" 
	    else
	      outp = "#{node_value}\n"
	    end

	    @children.each do |child|
	      outp << child.tree_traversal(depth + 1)
	    end

	    outp
	  end

	

	
	
end



tree = TreeNode.new(5)

tree2 = TreeNode.new(4)

tree3 = TreeNode.new(1)

tree4 = TreeNode.new(11)

tree.add_child(tree2)
tree.add_child(tree3)

tree2.add_child(tree4)

puts tree.tree_traversal









