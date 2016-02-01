class MyArrayList
	

	def initialize
		@arraylist = Array.new(5)
		@actualsize = 0
	end


	def add(word)
		if (@arraylist.size - @actualsize) == 0
			@increase = Array.new(5)
			@arraylist = @arraylist + @increase
		end

		@arraylist[@actualsize] = word
		@actualsize = @actualsize+ 1
	end

	def remove(index)

		if index < @actualsize
			@arraylist[index] = nil
			

			tmp = index

			while tmp < @actualsize
				@arraylist[tmp] = @arraylist[tmp + 1]				
				
				@arraylist[tmp + 1] = nil

				tmp = tmp + 1
			end
				
			@actualsize = @actualsize - 1



		else
			ArrayIndexOutOfBoundsException()
		end
		
	end

	def ArrayIndexOutOfBoundsException
  		raise "That index is out of balance"
	end

	def size
		return @arraylist.size
	end

	def print_array
		
		@arraylist.each do |x|
			if x == nil
				puts 'nil'
			else
				puts x
			end

		end
		
	end
	

	
end


arraylist = MyArrayList.new

arraylist.add('apple')
arraylist.add('banana')
arraylist.add('orange')
arraylist.add('pinaple')
arraylist.add('spider')
arraylist.add('lion')
arraylist.add('dog')
arraylist.add('cat')


arraylist.remove(2)

arraylist.print_array

puts 'array size is: ' + arraylist.size.to_s



