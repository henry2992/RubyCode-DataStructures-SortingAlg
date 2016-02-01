def bubble_sort(array)
	array = array
	
	start = 0
	count = array.count 
	pointer = 1

	while start < count
	
		
		while pointer < count 
			
			if array[pointer] < array[start] 
				array[pointer], array[start] = array[start], array[pointer]
			end
			
			pointer = pointer + 1

		end
		

		start = start + 1

		pointer = start + 1

	end

	return array
			
	

end


array = [3,5,19,1,6,3,7,2]

puts bubble_sort(array)