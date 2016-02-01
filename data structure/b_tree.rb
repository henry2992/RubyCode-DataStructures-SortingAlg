class Node
  attr_accessor :value, :parent, :left, :right
  def initialize(val=nil)
    @value = val
    @parent = nil
    @left = nil
    @right = nil
  end

  def to_s
    parent_node = parent.nil? ? "none" : parent.to_s
    l_child = left.nil? ? "none" : left.value.to_s
    r_child = right.nil? ? "none" : right.value.to_s
    return "value: " + value.to_s + ", parent: " + parent_node + ", left: " + l_child + ", right: " + r_child
  end

end

class Tree

  attr_accessor :tree
  
  def initialize
    @tree = Node.new()
  end

  def place_in_tree(tre, node)
    
    if (node.value) > (tre.value)
      if tre.right.nil?
        node.parent = tre.value
        tre.right = node
      else
        place_in_tree(tre.right, node)
      end
    elsif node.value < tre.value
      if tre.left.nil?
        node.parent = tre.value
        tre.left = node
      else
        place_in_tree(tre.left, node)
      end
    else
      puts "Error: the element already exists in the tree"
    end
  end

  def build_tree
   # values = 30.times.map{rand(200) + 1}
    values = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].shuffle
    #values = [5, 6, 14, 11, 4, 2, 9, 12, 10, 13, 8, 3, 7, 1, 15]
    puts values.inspect
    @tree.value = values.shift
    values.each do |val|
      node = Node.new(val)
      place_in_tree(@tree, node)
    end
  end

  def breadth_first_search(target)
    
    queue = [@tree] #Queu (ARRAY) of node root
    visited = [@tree.value] #Array of values


    
    return @tree if target == @tree.value #Return the Tree(root) if value is there. (First element)

    while !queue.empty? #while the queu is not empty keep doing it
      
     

      node = queue.pop #take out the first element on the left of the array
     

      children = [node.left, node.right] #all the nodes from left to right of the root

          

      children.each do |next_child|

       
        
        if !next_child.nil? #If the nextchild(left or right) is not nil, do this:
          
          queue.unshift(next_child) #put in the front: the next child
          visited.push(next_child.value) #push to the end of values

          return next_child if target == next_child.value #return the next child value if it is eauql to the value
        end


      end
    end
    nil


  end

  def depth_first_search(target)
    stack = []
    visited = []
    node = @tree
    popped = false

    while true #mientras sea cierto continuar
      if !node.nil? #Si el siguiente node es nil? Hacer esto
        return node.value if target == node.value #Return node if el target es igual al value del node
        
        if !popped # If popped is false
          stack.push(node) #Push el node al Stack       
          visited.push(node.value) #y Empuja el value al visited
        end      
        
        popped = false 
        
        if (!node.left.nil? && !visited.include?(node.left.value)) #Si el node de la izquierda esta vacio y 
          #el value de la izquierda no esta en los visitados
          node = node.left #el Current node es el de la izquierda
        elsif (!node.right.nil? && !visited.include?(node.right.value))  #lo mismo para el node de la derecha
          node = node.right 
        else 
          return nil if stack.empty? #retorna nil si el stack esta vacio
          node = stack.pop #si saca del stack el ultimo value
          popped = true #y pon popped a true  
        end

      end
    end


    

    
  end

  def dfs_recursive(target, next_node = @tree)
    return nil if next_node.nil?
    return next_node if target == next_node.value 
    return ( dfs_rec(target, next_node.left) || dfs_rec(target, next_node.right) )
  end

  def show_tree(tre)
    return nil if tre.nil?
    puts tre.to_s
    show_tree(tre.left) if !tre.left.nil?
    show_tree(tre.right) if !tre.right.nil?
  end
  
end

arv = Tree.new

#Arv.tree will return the node

arv.tree.value = 10

arv.place_in_tree(arv.tree, Node.new(2))
arv.place_in_tree(arv.tree, Node.new(5))
arv.place_in_tree(arv.tree, Node.new(12))
arv.place_in_tree(arv.tree, Node.new(1))
arv.place_in_tree(arv.tree, Node.new(9))
arv.place_in_tree(arv.tree, Node.new(11))

arv.breadth_first_search(9)


# array = [4,5,1,6,3,9,7]

# hola = array.pop 

# puts array

