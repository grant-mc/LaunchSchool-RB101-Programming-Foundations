p 'Enter the length of the room in meters:'
length = gets.chomp().to_f
p 'Enter the width of the room in meters:'
width = gets.chomp().to_f

area = length * width

puts "The area of the room is #{area} square " + \
"meters (#{(area * 10.7639).round(2)} square feet)"