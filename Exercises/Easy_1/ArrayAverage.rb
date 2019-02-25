def average(arr)
  avg = 0
  arr.each { |num| avg += num }
  avg = avg / arr.size
end

#BEST SOLUTION
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40