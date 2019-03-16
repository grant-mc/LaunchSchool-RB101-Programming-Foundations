def interleave(arr1, arr2)
  arr3 = []
  for i in 0..(arr1.size - 1)
    arr3 << arr1[i]
    arr3 << arr2[i]
  end
  arr3
end

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']