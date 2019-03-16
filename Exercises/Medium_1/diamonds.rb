def diamonds(n)
  return "*" if n == 1
  diamond = []
  for d in (1..n).step(2)
    diamond << (" " * ((n - d)/2) + "*" * d + " " * ((n - d)/2))
  end
  bottom = diamond[0..diamond.size-2]
  bottom.reverse.each { |row| diamond << row }
  diamond.each { |row| p row}
end

diamonds(1)
diamonds(3)
diamonds(9)