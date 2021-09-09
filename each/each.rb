friends = ["haastrup", "bolu", "femi", "deola", "ahmed"]

friends.each {|friend| puts "Meet my good pal, " + friend}

my_array = [15, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end