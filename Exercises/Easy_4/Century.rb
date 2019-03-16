def century(num)
  cent = (num/100.to_f).ceil.to_s

  if ['11', '12', '13'].include?(cent.slice(-2,2))
    last_letters = 'th'
  else
    last_letters = case cent[-1]
      when '1' then 'st'
      when '2' then 'nd'
      when '3' then 'rd'
      else
        'th'
    end
  end
  
  cent << last_letters
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
