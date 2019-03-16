def balanced?(parentheses)
  parentheses = parentheses.chars.select { |c| c =~ /[()]/ }
  p parentheses
  p parentheses.sort
  parentheses.count('(') == parentheses.count(')') ? nil : (return false)
  parentheses.sort == parentheses ? (return true) : (return false)
end

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

#p balanced?('What (is) this?') == true
#p balanced?('What is) this?') == false
#p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
#p balanced?('((What)) (is this))?') == false
#p balanced?('Hey!') == true
#p balanced?(')Hey!(') == false
#p balanced?('What ((is))) up(') == false
