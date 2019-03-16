def double_consonants(string)
  string.chars.map { |e| (e.downcase =~ /[b-df-hj-np-tv-z]/) ? e * 2 : e * 1 }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
