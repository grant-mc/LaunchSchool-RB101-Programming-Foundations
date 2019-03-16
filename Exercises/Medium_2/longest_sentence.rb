text = File.read('independence.txt')
sentences = text.split(/\?|\.|!/)
longest_sentence = sentences.max_by { |sentence| sentence.split.size }
longest_sentence = longest_sentence.strip


sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
