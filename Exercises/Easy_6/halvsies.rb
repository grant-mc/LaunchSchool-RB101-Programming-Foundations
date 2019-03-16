def halvsies(arr)
  h1 = []
  h2 = []
  half_size = (arr.size / 2.to_f).ceil
  arr.each { |n| h1.size < half_size ? h1 << n : h2 << n }
  [h1,h2]
end

def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end


p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])