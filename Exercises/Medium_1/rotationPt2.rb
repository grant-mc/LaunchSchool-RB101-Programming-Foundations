def rotate_array(arr)
  new_arr = []
  arr.each { |e| new_arr << e}
  new_arr.push(new_arr.shift)
  new_arr.join
end

def rotate_rightmost_digits(num, pos)
  string_num = num.to_s
  digs = string_num.slice!(-pos,pos).split('')
  (string_num + rotate_array(digs)).to_i
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 2)

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917