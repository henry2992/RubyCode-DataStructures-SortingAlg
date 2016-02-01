class Node
	
	attr_accessor :next_node
	attr_accessor :value

	def initialize(value, pointer)
		@value = value
		@next_node = pointer
	end

end

class LinkedList 
	
	def initialize(value)
		#This will initialize a new node at the head
		@head = Node.new(value, nil)
	end
	
	def add(value)
		# Traverse to the end of the list
        # And insert a new node over there with the specified value
		
		current = @head # set the current node in the head

		while current.next_node != nil #while the next node is not nil, so there is a next node
			current = current.next_node #set the current to the next node
		end

		#if we found the last node, add a new node
		current.next_node = Node.new(value, nil)
	end

	def delete(value)
		current = @head


		if current.value == value
			# If the head is the element to be delete, the head needs to be updated
			@head = @head.next_node
		else
			current = @head

			#While the current node is not nil, (Not the tail)
			#And the next node is not nil (Not the Tail)
			#And the Value of the next node is not equal to the value entered 
			while (current != nil) && (current.next_node != nil) && ((current.next_node).value != value)
				current = current.next_node #set the current node to the next node
			end
			
			#We get the node before the one to erase 	
			if (current != nil) && (current.next_node != nil)
				current.next_node = (current.next_node).next_node #Set the current next node to jump a space. 
			end

		end

	end

	def exits(value)
		
		current = @head
		while current != nil 

			if current.value == value
				return true
			end

			current = current.next_node #set the current to the next node
		end
		return false
	end

	def size
		size = 0
		
		current = @head

		while current != nil 
			current = current.next_node 
			size = size + 1
		end
		
		return size
	end

	def print_list
		current = @head

		full_list = []

		while current.next_node != nil
			full_list += [current.value.to_s]
			current = current.next_node
		end

		full_list += [current.value.to_s]

		puts full_list.join('-->')

	end


end

ll = LinkedList.new(5)

ll.add(10)
ll.add(3)
ll.add(6)

ll.delete(6)

ll.print_list

puts ll.exits(6)

ll.size



