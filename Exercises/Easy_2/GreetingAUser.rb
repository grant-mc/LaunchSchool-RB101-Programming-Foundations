def greeting(name)
  if name.end_with?("!")
    greeting = "HELLO " + name.upcase + \
    ". WHY ARE WE SCREAMING?"
  else
    greeting = "Hello " + name + "."
  end
end

print "What is your name? "
name = gets.chomp
p greeting(name)