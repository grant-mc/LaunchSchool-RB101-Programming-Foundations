def multiply_all_pairs(arr1,arr2)
  total = []
  arr1.each do |n1|
    arr2.each { |n2| total << n1 * n2 }
  end
  total.sort()
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]