
def crack(array)
  
  pwd_size = array.length
  counter = 0

  pointer = 0

  while 0 < pwd_size
    


    while counter < 10

     

      if array[pointer].to_i == counter
        pointer += 1
        break
      end
      counter += 1

    end

    
    counter = 0

    

    pwd_size -= 1
    
    
  end

  return "Your password is #{array.join}"
  

end
    
  
  




def get_password(val=0, password)
  
  if val == password
    puts "This is your password #{password}"
  else
    puts val
    get_password(val+1, password)
  end

end

puts "GIve me a password"

password = gets

new_password = password.split('')

puts crack(new_password)


# get_password( 0 , password)


# recursion







