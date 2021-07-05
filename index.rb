# Basics of getting user input

puts "Can we have your name? "
name = gets.chomp()
puts ("Hello " + name + ", We are glad to have you on board")

# Building a simple calculator

puts "Enter a number"
first_num = gets.chomp()
puts "Kindly enter another number"
second_number = gets.chomp()

puts (first_num.to_f + second_number.to_f)
