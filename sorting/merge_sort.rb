#one
def merge_sort(array)

  if array.length <= 1
    return array
  else
    mid = (array.length / 2)
    left = merge_sort(array[0..mid - 1])
    right = merge_sort(array[mid..array.length])
    merge(left, right)
  end

 
end


#First define a Merga algorithm
# takes two list a recurseveli merge then
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



array = [2,9,5,1,3,7]

array2 = [3,]
# # puts (array.length/ 2)

puts merge_sort(array)





#Another one

class Array
  def merge_sort
    return self if self.length <= 1

    middle = (self.length / 2).to_i
    left = self[0..middle-1].merge_sort
    right = self[middle..self.length-1].merge_sort

    return merge(left, right)
  end

   def merge(left, right)
    result = Array.new

    while left.length > 0 || right.length > 0
      if left.length > 0 && right.length > 0
        if left[0] <= right[0]
          result << left.slice!(0)
        else
          result << right.slice!(0)
        end
      elsif left.length > 0
        result.concat left.slice!(0..left.length-1)
      elsif right.length > 0
        result.concat right.slice!(0..right.length-1)
      end
    end

    return result
  end

 
end



# array3 = [1, 3, 9 ]

# array4 = [2, 4, 7]

# puts merge(array3, array4)










