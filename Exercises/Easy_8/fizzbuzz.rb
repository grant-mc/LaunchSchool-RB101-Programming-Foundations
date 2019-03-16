def fizzbuzz(start, fin)
  results = []
  for i in(start..fin)
    if i % 3 == 0 && i % 5 == 0
      results << 'FizzBuzz'
    elsif i % 5 == 0
      results << 'Buzz'
    elsif i % 3 == 0
      results << 'Fizz'
    else 
      results << i
    end
  end
  results
end

p fizzbuzz(1, 15)