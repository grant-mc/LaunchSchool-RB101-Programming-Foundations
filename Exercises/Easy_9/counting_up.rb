def sequence(num)
  result = []
  for i in (1..num)
    result << i
  end
  result
end

def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]