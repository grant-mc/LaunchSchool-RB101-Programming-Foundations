def print_in_box(string)
  top = "\|\+" + "#{'+' * string.length}" + "\+\|"
  inner = "\| " + "#{' ' * string.length}" + " \|"
  puts "#{top}"
  puts "#{inner}"
  string.prepend('| ') << ' |'
  #string << ' |'
  puts "#{string}"
  puts "#{inner}"
  puts "#{top}"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')