arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
new_hsh= {}
arr.each do |subarr|
  new_hsh[subarr[0]] = subarr[1]
end
p new_hsh