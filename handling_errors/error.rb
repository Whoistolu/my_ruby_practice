# dividing by zero throws an error

#num = 10 / 0

# can not pass a string into the array of numbers, it throws an error also

list_of_numbers = [2, 34, 55, 898]

list_of_numbers["dog"]

begin
    list_of_numbers["dog"]
    # num = 10 / 0
rescue ZeroDivisionError
    puts "A division by zero error"
rescue TypeError
    puts "Wrong type"
end

