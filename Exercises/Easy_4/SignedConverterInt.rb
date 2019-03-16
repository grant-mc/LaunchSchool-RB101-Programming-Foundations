
def integer_to_string(num)
  num.digits.reverse.join('')
end

def signed_integer_to_string(int)
  return '0' if int.zero?
  sign = int < 0 ? '-' : '+'
  integer_to_string(int.abs).prepend(sign)
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'