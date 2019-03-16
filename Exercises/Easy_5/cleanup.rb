def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")# == ' what s my line '