flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flin_hash = {}
flintstones.each_with_index do |n, i|
  flin_hash[n] = i
end
p flin_hash
