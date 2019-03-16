def merge(arr, arr2)
  (arr + arr2).uniq()
end

def merge(array_1, array_2)
  array_1 | array_2
end


p merge([1, 3, 5], [3, 6, 9])

