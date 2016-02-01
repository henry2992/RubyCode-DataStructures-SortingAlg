# puts "give me addres"

# string = gets.chomp

 def ipv4(s) #check Ip 4

            input = s.split('.')
            count_points = s.count('.')


            if count_points != 3
                return false
            end

            if input.size != 4
                return false
            end


            input.each do |i|  
            	
                if  !i.to_i.between?(0,255)
                    return false
                end
                if  i.is_a?(Numeric)
                    return false
                end
            end

            return true	
 end	

def ipv6(s)

	input = s.gsub(/\s+/m, ' ').strip.split(':')
	count_points = s.count(':')

	hex = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f']

	if count_points != 7

		return false
	end

	if input.size != 8

		return false
	end
	

	input.each do |i|



		if i.length > 4

			return false
		end   
		

		v = i.split('')

		v.each do |x|

			if !hex.include?(x)
				return false
			end
		end
	end

	return true
	
end


def  IPAddressValidator() 


		text=File.open('input002.txt').read
		text.gsub!(/\r\n?/, "\n")
		
		text.each_line do |line|
			 
		  	if ipv4(line) == true
				puts "IPv4"
			elsif ipv6(line) == true
				puts "IPv6"
			else
				puts "Neither"
			end
		end
end

IPAddressValidator()

# ipv6(string)


