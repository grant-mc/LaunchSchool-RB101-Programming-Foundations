def running_total(arr)
  total = 0
  running_total = []
  arr.each do |num|
    total += num
    running_total << total
  end
  running_total
end

#Best Option
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20]) 
p running_total([3])
p running_total([])

