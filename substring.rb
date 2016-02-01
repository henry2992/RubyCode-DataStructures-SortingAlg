puts "give me a word"

word = gets.chomp

def substringCalculator(st)

	c =0
	f= 0
	la = st.length 

	counter = 0
	
	list = Hash.new

	array = []

	while  f < la

		while f < la
			c = c + 1

			word = st[f, la - counter].downcase

			if list.has_key?(word)

			else
				list[word] = c
			end

			la = la - 1	
		end
		
		counter = counter + 1
		f = f + 1
		la = st.length
		
	end

	print list.length

end

substringCalculator(word)