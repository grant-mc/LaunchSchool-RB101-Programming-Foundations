def letter_case_count(str)
  cases = {:lowercase => 0, :uppercase => 0, :neither => 0}
  str.chars.each do |c|
    case c
      when /[a-z]/ then cases[:lowercase] += 1
      when /[A-Z]/ then cases[:uppercase] += 1
      else cases[:neither] += 1
    end
  end
  cases
end

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
