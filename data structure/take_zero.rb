def take_zero(array)



	counter = 0
	zero_counter = 0

	while counter < array.length
	

		if array[counter] == 0
			array.delete_at(counter)
			counter -= 1
			zero_counter += 1
		end

		counter += 1
	end

	(1..zero_counter).each do |x|
		array << 0
	end

	print array
	puts
end

array = [1,0,9,4,5,0,2]

array2 = [0,9,4,2,5,0,0]

array3 = [0,9,4,0,5,3, 0, 2,5]

array4 = [0,9,4,0,0,2,3,0]



take_zero(array)
take_zero(array2)
take_zero(array3)
take_zero(array4)

