class Stack

	attr_accessor :top, :size

	def initialize
		@store = Array.new
		@top = -1
		@size = 0
	end

	def push(element)
		@top = @top + 1
		@store[@top] = element
		@size = @size + 1
	end

	def pop

		if @store.empty?
			puts "The stack is empty"
		else
			popped = @store[@top]
			@store[@top] = nil
			@top = @top - 1
			@size = @size - 1
		end

	end

	def reset 
		@store = Array.new
		@top = -1
		@size = 0
	end

	def size
		return @size
	end

	def first
		return @store.first
	end

	def peek
		return @store[@top]
	end

	def print

		puts "(LeftMost : Oldest Element) " + @store.join("<-") +" (RightMost : Newest Element)"
		
		
	end
	
end

stack = Stack.new

stack.push(5)
stack.push(3)
stack.push(2)

stack.pop

# stack.reset

# stack.pop

stack.print

# puts stack.size
# puts stack.first
# puts stack.last
