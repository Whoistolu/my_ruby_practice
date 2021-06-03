friends = ['Tolu', 'Leo', 'Sharon','Bola', 'Folake']
invited_list = []

friends.each do |friend|
  if friend != 'Leo'
    invited_list.push(friend)    
  end
end

print invited_list



friends = ['Sam', 'Theo', 'Aaron','Oyebola', 'Folakemi']

friends.select { |friend| friend != 'Oyebola' }

print friend