statement = "The Flintstones Rock"
letters = statement.split('')
letters.delete_if { |letter| letter == ' ' }
numof_letters = {}
letters.each { |letter| numof_letters[letter] = statement.count(letter) }
p numof_letters

##OFFICIAL SOLUTION
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end