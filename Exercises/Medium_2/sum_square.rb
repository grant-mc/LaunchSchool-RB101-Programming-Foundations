def sum_square_difference(num)
  arr =(1..num).to_a
  (arr.reduce(:+)**2) - (arr.map { |e| e ** 2 }.reduce(:+))
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
