print "What is your name? "
name = gets.chomp

happy_birthday_string = "Happy birthday "

i = 0
until i == 4
  case i
    when 2
      puts "#{happy_birthday_string}dear #{name}"
    else 
      puts "#{happy_birthday_string}to you"
    end
  i+=1
end
