def featured(num)
  num += 1
  num >= 9999999999 ? (return 'There is no possible number that fufills those requirements') : nil
  for feat in (num..9999999999)
    (feat % 7).zero? && feat.odd? && feat.digits.size == feat.digits.uniq.size ? (return feat) : (next)
  end
  'There is no possible number that fufills those requirements'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
