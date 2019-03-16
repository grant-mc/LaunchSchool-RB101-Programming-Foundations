def show_multiplicative_average(arr)
  total = 1.0
  arr.each { |d| total *= d }
  average = total/arr.size
  format('%.3f', average)
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])