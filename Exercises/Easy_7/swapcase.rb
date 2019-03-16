def swapcase(str)
  str.chars.map { |chr| (chr =~ /[a-z]/) ? chr.upcase : chr.downcase }.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'