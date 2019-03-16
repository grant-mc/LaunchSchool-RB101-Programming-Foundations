def greetings(name, titles)
  p titles.to_a.flatten
  titles = titles.to_a.flatten.select { |e| e.is_a? String }.join(" ")
  puts ("Hello, #{name.join(" ")}! " + \
   "Nice to have a #{titles} around.")
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })