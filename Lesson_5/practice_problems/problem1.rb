arr = ['10', '11', '9', '7', '8']
new_arr = arr.map { |num| num.to_i }
p new_arr.sort { |a, b| b <=> a }

#BEST SOLUTION
arr.sort do |a,b|
  b.to_i <=> a.to_i
end