def triangle(a,b,c)
  trig = [a, b, c].sort()
  trig.any?(0) || (trig[0] + trig[1]) < trig[2] ? (return :invalid) : nil
  trig.each do |side|
    case trig.count(side)
      when 3 then return :equilateral
      when 2 then return :isosceles
    end
  end
  return :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
