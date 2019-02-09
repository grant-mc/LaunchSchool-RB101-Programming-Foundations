words = "the flintstones rock"
titlesize = words.split()
titlesize = titlesize.map! { |word| word.capitalize }.join(' ')
p titlesize

#BEST SOLUTION
#words.split.map { |word| word.capitalize }.join(' ')
