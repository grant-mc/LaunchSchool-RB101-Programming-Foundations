arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
new_arr = []

arr.each do |array|
  new_arr << array.sort { |a, b| b <=> a }
end

p new_arr