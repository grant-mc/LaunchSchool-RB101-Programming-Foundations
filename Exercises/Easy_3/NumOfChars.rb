def num_chars(str)
  puts "There are #{str.delete(' ').size} characters in " + \
  "\"#{str}\""
end

print "Please write word or multiple words: "
words = gets.chomp
num_chars(words)