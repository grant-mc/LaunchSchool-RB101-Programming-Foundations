def triangle(num)
  spaces = num - 1
  stars = 1
  while spaces > 0
    print " " * spaces + "*" * stars + "\n"
    spaces -= 1
    stars += 1
  end
end

def triangle(n)
  (1..n).each {|stars| puts " " * (n - stars) + "*" * stars}
end

triangle(5)
triangle(9)