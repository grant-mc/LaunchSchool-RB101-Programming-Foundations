def word_sizes(string)
  arr = string.gsub(/[^a-z ]/i,'').split(" ").map { |e| e.length }
  p arr.uniq.each_with_object({}) { |i,h| h[i] = arr.count(i) }
end
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
