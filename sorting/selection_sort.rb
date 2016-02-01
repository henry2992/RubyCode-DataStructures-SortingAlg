# Find the smallest element using a linear scan and move it 
# to the front Then, find the second smallest and move it, 
# again doing a linear scan Continue doing this until all 
# the elements are in place O(n^2)

def selection_sort(array)
	
	start = 1
	count = array.count 
	pointer = 0



	while pointer < count - 1
		
		min_index  = pointer


		while start < count 
			
			puts "Compare #{array[pointer]} to #{array[start]}"

			if array[start] < array[min_index]
				min_index = start
			end

			start = start + 1

		end	

		array[pointer], array[min_index] = array[min_index], array[pointer]

		
		# puts "Minimun index #{min_index}"
		pointer = pointer + 1
		
		start = pointer + 1

	end

	return array	

end

def selection_sort2(array)
  0.upto(array.size-2).each do | j |
    min_index = j
    (j+1).upto(array.size-1).each do | i |
      min_index = i if array[i] < array[min_index]
    end
    puts "Swicth #{array[j]} with #{array[min_index]}"
    array[j], array[min_index] = array[min_index], array[j]
  end
  return array
end


array = [5,3,9,1]

puts selection_sort(array)

