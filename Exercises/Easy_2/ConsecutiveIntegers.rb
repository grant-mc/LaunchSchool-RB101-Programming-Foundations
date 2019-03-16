p 'Please enter an integer greater than 0:'
lim = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp

if op == 's'
  sum = (1..lim).to_a.reduce(:+)
  puts "The sum of the integers between 1 and #{lim} is #{sum}."
else
  prod = (1..lim).to_a.reduce(:*)
  puts "The product of the integers between 1 and #{lim} is #{prod}."
end