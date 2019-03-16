def oddities(arr)
  oddsies = []
  arr.each_with_index { |e, i| oddsies << e if i == 0 || i.even? }
  oddsies
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
