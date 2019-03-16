def short_long_short(strngA, strngB)
  if strngA.size > strngB.size
    strngB + strngA + strngB
  else
    strngA + strngB + strngA
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"