name = 'Teddy'
age = rand(20..200)
p "What's your name?"
user_name = gets.chomp()
name = user_name if user_name != ''
puts "#{name} is #{age} years old!"