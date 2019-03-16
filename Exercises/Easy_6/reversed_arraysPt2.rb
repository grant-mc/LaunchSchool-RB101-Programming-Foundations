def reverse(arr)
  arr.each_with_object([]) { |e, new_arr| new_arr.unshift e }
end

def reverse(arr)
  new_arr = arr.inject([]) { |new_arr, e| new_arr.unshift e  }
end

def reverse(arr)
  arr.reverse_each.reduce([], :<<)
end
