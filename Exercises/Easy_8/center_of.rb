def center_of(string)
  middle = (string.size / 2)
  string.size.even? ? string.slice((middle - 1),2) : string[middle]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
