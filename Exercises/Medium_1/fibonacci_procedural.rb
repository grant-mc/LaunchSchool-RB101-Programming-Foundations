def fibonacci(nth)
  return 1 if nth <= 2
  total = [0, 1]
  for i in (2..nth)
    total << total[i -1] + total[i - 2]
  end
  total.pop
end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#p fibonacci(100_001)
