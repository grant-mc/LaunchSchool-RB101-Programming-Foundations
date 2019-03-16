DIGIT_HASH = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 
'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}

def word_to_digit(string)
  string.split(/\b/).map { |word| DIGITS.has_key?(word) ? word = DIGITS[word] : word = word}.join(' ')
end

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')