class MyHash

	attr_reader :buckets

	def initialize
		@buckets = []
	end


	def assign_or_find_index(k)
		special_function(k) % 100
	end

	def special_function(k)
		k = k.to_sym #Im converting k to a symbol (cat = :cat)
		k.object_id  #This will give me an identifier for the object
	end

	def insert(k , v)
		index = assign_or_find_index(k) #find or assing and index 
		buckets[index] ||= [] # This is: buckets[index] || buckets[index] = []
		buckets[index] << [k,v]
		# puts buckets[index]
	end

	def find(k)
		index = assign_or_find_index(k) #find or assing and index 
		buckets[index].each do |pair|
			if pair[0] == k #If the 0 index in pair (Key) is equal to K
				puts pair[1]
				return pair[1] #Return pair[1] or value	
			end
		end	
	end

end

hash = MyHash.new

hash.insert('dog', 'keyla')
hash.insert('cat', 'sister')

hash.find('dog')




