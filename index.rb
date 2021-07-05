# Basics of getting user input

puts "Can we have your name? "
name = gets.chomp()
puts ("Hello " + name + ", We are glad to have you on board")

# Building a simple calculator

puts "Enter a number"
first_num = gets.chomp().to_f
puts "Kindly enter another number"
second_number = gets.chomp().to_f

puts (first_num + second_number)
