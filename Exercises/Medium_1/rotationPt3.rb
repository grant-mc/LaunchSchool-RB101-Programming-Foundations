def rotate_array(arr)
  new_arr = []
  arr.each { |e| new_arr << e}
  new_arr.push(new_arr.shift)
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(num)
  max_rot = num.to_s.size
  while max_rot > 0
    num = rotate_rightmost_digits(num, max_rot)
    max_rot -= 1
  end
  num
end

#p max_rotation(735291)

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
