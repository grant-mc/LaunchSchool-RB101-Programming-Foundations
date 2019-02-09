say_hello = true
c = 0

while say_hello
  puts 'Hello!'
  c >= 4 ? say_hello = false : ''
  c += 1
end
