require ../insertion_sort.rb


def bucket_sort(input_array)
  bucket = []
  

  input_array.each do |item|

    bucket[item]=item
  
  end

  puts bucket


  sorted_list = []
  bucket.each do |item|
    sorted_list.push(item) if not item.nil?
    #if bucket[item] != nil
     # sorted_list.push(item)
    #end
  end
  return sorted_list


end

some_array = [1, 4, 7, 5, 2]

bucket_sort(some_array)