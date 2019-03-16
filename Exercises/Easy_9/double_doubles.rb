def twice(num)
  string_number = num.to_s
  middle = string_number.size / 2
  half1 = string_number.slice(0,middle)
  half2 = string_number.slice(middle,middle)
  num *= 2 if string_number.size.odd? || half1 != half2
  num
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10


