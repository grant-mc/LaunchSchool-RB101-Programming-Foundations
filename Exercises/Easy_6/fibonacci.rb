def num_digits(fib)
    Math.log10(fib).to_i + 1
end

def find_fibonacci_index_by_length(num)
  arr = [0,1]
  fib = 1
  while num_digits(fib) != num
    fib = arr[-1] + arr[-2]
    arr << fib
  end
  arr.size() - 1
end

p find_fibonacci_index_by_length(2) == 7           # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847