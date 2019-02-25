print "What is the bill? "
bill = gets.chomp.to_f.round(3)
print "What is the tip percentage? "
tip = ((gets.chomp.to_f) / 100 * bill).round(3)

puts "The tip is $#{format("%.2f",tip)}"
puts "The total is $#{format("%.2f",bill + tip)}"