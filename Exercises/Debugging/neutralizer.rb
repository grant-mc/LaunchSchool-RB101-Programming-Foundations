def neutralize(sentence)
  words = sentence.split(' ')
  words.select { |word| !negative?(word) }.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic annoying board game.')