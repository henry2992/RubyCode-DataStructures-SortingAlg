#Insertion sort works by repeatedly taking an element from 
#the unsorted portion of a list and inserting it into the 
#sorted portion of the list until every element has been inserted .
# This algorithm is the one usually used by people when sorting
# piles of papers .


 # It builds a sorted array (or list) one element at a time by comparing
 # each new element to the already-sorted elements and inserting the
 # new element into the correct location, similar to the way you sort 
 # a hand of playing cards.




def insertion_sort(array)

	counter = 1


	while counter < array.size 

		element = array[counter]


		j = counter

		while 0 < j && element < array[j-1]
			# puts "swipe #{array[j]} index #{j} with #{array[j-1]} index #{j-1}"
			array[j] = array[j-1]
			j = j - 1
		end

		x
		counter = counter + 1

		array[j] = element	
		# print array
		# puts
	end

	# puts 
	return array
	
end
array = [9,2,1,3,7]

puts insertion_sort(array)



