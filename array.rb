a = Array(1..100)

a.each {|x|

  if (x%3 == 0) && (x%5 == 0)
    puts "Aqui"
  elsif (x%5 == 0)
    puts "Pop"
  elsif (x%3 == 0)
      puts "Crackle"
  else
      puts x
  end



}
