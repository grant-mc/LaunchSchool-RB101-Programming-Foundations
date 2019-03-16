def triangle(a,b,c)
  trig = [a, b, c].sort()
  trig.any?(0) || trig.reduce(:+) != 180 ? (return :invalid) : nil
  trig.each do |side|
    case 
      when trig.select { |e| e == 90 }.size == 1 then return :right
      when trig.select { |e| e > 90 }.size == 1 then return :obtuse
    end
  end
  return :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid