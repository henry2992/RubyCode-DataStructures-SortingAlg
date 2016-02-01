
def merge_sort(array)

	if array.size <= 1
		return array
	else
		mid = (array.count / 2)
		left = merge_sort(array[0..mid - 1])
        right = merge_sort(array[mid..array.length])
		merge(left,right)
	end

	
end

def merge(left, right)

   if left.empty?
	    return right
	elsif right.empty?
	    return left
	elsif left.first < right.first
	    [left.first] + merge(left[1..left.length], right)
	else
	    [right.first] + merge(left, right[1..right.length])
	end
	
end


array = [1,7,5,3,2,5,6,1,9]

# array = [array.first] + [4,5]

# puts array

merge_sort(array)


