def quicksort(array)

  if array.length <= 1 
    return array
  end

  pivot_index = array.length / 2

  pivot_value = array[pivot_index]

  #should delete at pivot value to merge it again when sorted
  array.delete_at(pivot_index)

  
  #Create new arrays to hold the left and right values
  left = Array.new
  right = Array.new


  array.each do |x|
    if x <= pivot_value
      left << x
    else
      right << x
    end
  end

 

  return quicksort(left) + [pivot_value] + quicksort(right)

end


def particion_array(array,left,right,pivot)

  pivot_value = array[pivot]

  array[pivot], array[right] = array[right], array[pivot]

  store_index = left


  (left..right - 1).each do |i|
    
    if array[i] < pivot_value
      array[i], array[store_index] = array[store_index], array[i] 
      store_index += 1  
    end

  end


  array[store_index], array[right] = array[right], array[store_index]

  return store_index


end

def inplace_quicksort(array, left, right)

  if left < right
    pivot_index = (left + ((right- left)/2)).to_i
    new_pivot_index = particion_array(array,left,right,pivot_index)
    inplace_quicksort(array,left,new_pivot_index-1)
    inplace_quicksort(array,new_pivot_index+1,right)
  end

  return array
  
end


array = [2 , 4, 3 , 11 , 7 , 3 , 9 , 8 , 5 , 1]


puts inplace_quicksort(array, 0, array.length - 1)