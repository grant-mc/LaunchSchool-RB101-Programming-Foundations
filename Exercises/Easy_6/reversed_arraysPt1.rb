def reverse!(arr)
  lim = 0
  while lim != arr.size
    lst = arr.pop
    arr.insert(lim,lst)
    lim += 1
  end
  arr
end

#BEST Solution

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end