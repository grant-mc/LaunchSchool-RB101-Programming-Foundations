def square(a, pow)
  total = 1
  for i in (1..pow)
    total = multiply(total, a)
  end
  total
end

def multiply(a,b)
  a * b
end

p square(2, 4)