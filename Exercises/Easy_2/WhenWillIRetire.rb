CURRENT_YEAR = Time.now.year

print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

years_left = retirement_age - age
retirement_year = CURRENT_YEAR + years_left

puts "It's #{CURRENT_YEAR}. " + \
"You will retire in #{retirement_year}."
puts "You only have #{years_left}" + \
" years of work to go!"
