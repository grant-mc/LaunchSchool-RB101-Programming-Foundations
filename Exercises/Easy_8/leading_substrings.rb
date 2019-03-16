def substrings_at_start(string)
  sub_strings = []
  1.upto(string.size) do |count|
    sub_strings << string.slice(0, count)
  end
  sub_strings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']