class Queue 
	
	attr_accessor :size

	def initialize
		@store = Array.new
		@size = 0
	end

	def enqueue(value)
		
		@store << value
		@size = size + 1
	end

	def dequeue

		if @store.empty?
			puts "Queue is empty"
		else
			@store.shift
			@size = @size - 1
		end
	end
	
	def size
		@size
	end


	def print
		puts @store.join("-->") 
	end
	
	
end

fifo = Queue.new

fifo.enqueue(5)
fifo.enqueue(6)
fifo.enqueue(2)


fifo.print