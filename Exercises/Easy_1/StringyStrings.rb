=begin
def stringy(num)
  word = ''
  num.times.each do |n|
    if n.odd?
      word << '0'
    else
      word << '1'
    end
  end
  word
end
=end

#Best Solution
def stringy(size, start = 1)
  numbers = []

  size.times do |index|
    number = index.even? ? start == 1 ? 1 : 0 : start == 1 ? 0 : 1
    numbers << number
  end

  numbers.join
end


puts stringy(6,0)
puts stringy(9)
puts stringy(4,0)
puts stringy(7)