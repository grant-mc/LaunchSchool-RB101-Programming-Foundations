loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  break if answer == 4
  p "Wrong answer. Try again!"
end
p "That's correct!"