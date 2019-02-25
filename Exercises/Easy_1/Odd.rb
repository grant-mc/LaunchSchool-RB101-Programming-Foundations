def is_odd?(num)
  num % 2 != 0
end

def is_odd2?(num)
  num.remainder(2) != 0
end

p is_odd2?(3)
p is_odd2?(4)
p is_odd2?(-109)
p is_odd2?(-200)