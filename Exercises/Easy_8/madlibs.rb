def madlib()
  print("Enter a noun: ")
  noun = gets.chomp
  print("Enter a verb: ")
  verb = gets.chomp
  print("Enter an adjective: ")
  adjective = gets.chomp
  print("Enter an adverb: ")
  adverb = gets.chomp
  puts("Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious")
end

madlib()
#Enter a noun: dog
#Enter a verb: walk
#Enter an adjective: blue
#Enter an adverb: quickly

#Do you walk your blue dog quickly? That's hilarious!
