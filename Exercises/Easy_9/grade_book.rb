def get_grade(grd1, grd2, grd3)
  avg = (grd1 + grd2 + grd3) / 3
  case
    when avg <= 100 && avg >= 90 then grade = 'A'
    when avg < 90 && avg >= 80 then grade = 'B'
    when avg < 80 && avg >= 70 then grade = 'C'
    when avg < 70 && avg >= 60 then grade = 'D'
    when avg < 60 && avg >= 0 then grade = 'F'
    else grade = "Invalid grades entered."
  end
  grade
end

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"