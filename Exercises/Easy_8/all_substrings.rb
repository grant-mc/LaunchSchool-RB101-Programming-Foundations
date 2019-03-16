def substrings(string)
  sub_strings = []
  c = 0
  while c < string.size - 1
    for i in (1..string.size - c)
      sub_strings << string.slice(c, i)
    end
    c+=1
  end
  sub_strings << string[-1]
  sub_strings
end

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
