
=begin
MY SOLUTION
def digit_list(num)
  p num.to_s.split('').join(', ')
end
=end

#BEST SOLUTION
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)
