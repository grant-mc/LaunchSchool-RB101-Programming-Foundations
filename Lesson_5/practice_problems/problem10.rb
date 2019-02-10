arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new_arr = []
arr.map do |hash|
  new_arr << hash.each {|k,v| hash[k] += 1}
end
p new_arr

#BEST SOLUTION

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end