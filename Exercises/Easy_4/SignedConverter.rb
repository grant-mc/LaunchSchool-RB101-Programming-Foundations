DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  digits.inject { |mem, var| mem*10 + var }
end

def string_to_signed_integer(string)
  sign = string.slice!(0) if string[0] == '+' || string[0] == '-'
  num = string_to_integer(string)
  num *= -1 if sign == '-'
  num
end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')
