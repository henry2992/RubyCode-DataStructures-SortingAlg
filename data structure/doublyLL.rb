
class Node

	attr_accessor :next_node, :value, :prev_node

	def initialize(prev_node, value, next_node)
		@prev_node = prev_node
		@value = value	
		@next_node = next_node
	end


end


class DoublyLL 

	def initialize(value)
		@head = Node.new(nil, value, nil)
	end
	
	def add(value)
		#Set the current value to @head to traverse to list
		current = @head
		
		#While the current value is not nil keep traversing
		while current != nil
			temp_node = current #set a temporary node to current node
			current = current.next_node	
		end

		#If the value is nil, create a node
		new_node = Node.new(temp_node, value, nil)
		
		#set the current value to the new node
		current = new_node

		#connect the Next node to the current node
		temp_node.next_node = current
	end

	def add_head(value)

		current = @head

		new_node = Node.new(nil, value, current)

		new_head = new_node
		
		current.prev_node = new_head

		@head = new_head


	end

	def remove(value)
		current = @head

		#If value is the head
		if current.value == value
			@head = @head.next_node
			@head.prev_node = nil
		else #if value is not the head
			
			while (current != nil) && (current.next_node != nil)  && ((current.next_node).value != value)
				
				current = current.next_node
			end
				
			if (current != nil) && (current.next_node != nil)
				connecting_node = (current.next_node).next_node
				current.next_node = connecting_node
				connecting_node.prev_node = current
			end
	

			
		end
	end

	def reverse

		current = @head

		new_list = DoublyLL.new(current.value)

		current = current.next_node

		while current != nil 
			new_list.add_head(current.value)
			current = current.next_node	
		
		end

		return new_list
		
	end

	def reverse_no_data_structures!

		#gets the head and sets it as the tail

  		if @head.nil?
  			return nil
  		else
  			@tmp_head = self.remove_head #Get the Head
	        @tmp_head.next_node = nil #Set the Head next value to nil (Since it will be the tail)
	        @tail = @tmp_head #Set the vairable tail.
  		end
        

	 	# repeatedly grabs the next head and attaches it to the tmporary head


        while @head != nil
          node = self.remove_head #Set a new node by removing the next head
          node.next_node = @tmp_head #Set the new node next node to be the head
          @tmp_head.prev_node = node #Set the  prev node of the temporary head to be the new node
          @tmp_head = node #Set the Temporary Head to the new node
        end
        #sets the head to the temp head once the loop is done
        @head = @tmp_head
		
	end

	#Will return the current head and set the next value as new head
	def remove_head
		
		old_head = @head

		if old_head == nil
			return nil
		else
			@head = old_head.next_node
		end

		# puts old_head.value
		return old_head

	end

	def print_list
		
		current = @head

	    while current != nil
	        puts current.value.to_s
	        current = current.next_node
	    end


    end

	
end



 dll = DoublyLL.new(5)
 dll.add(3)

 dll.add(2)



 # dll.remove(3)
puts "Print List"




 dll.reverse_no_data_structures!

  dll.print_list















