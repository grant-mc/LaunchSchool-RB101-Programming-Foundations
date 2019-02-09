hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = ''
hsh.each_value do |words|
  words.each do |word|
    word.chars.each do |letter|
      vowels << letter if /[aeiou]/.match(letter)
    end
  end
end
p vowels

#COURSE SOLUTION

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end