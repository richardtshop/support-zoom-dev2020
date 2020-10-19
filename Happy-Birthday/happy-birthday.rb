print "What is your name? "
name = gets.chomp

happy_birthday_string = "Happy birthday "

i = 0
while i < 4
  print happy_birthday_string
  if i == 2
    puts "dear #{name}"
  else
    puts "to you"
  end
  i+=1
end