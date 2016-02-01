puts "Give me a word"
word = gets.chomp.downcase.gsub /\W/, ''



def check_palindromic(str)
  
  word = str.strip
    
    puts word
      if word.reverse == word #Check if string same when reversed 
        puts "is a palindrome."
        return true
      else # If string is not the same when reversed
        puts " is not a palindrome."
        return false
      end

end


check_palindromic(word)

