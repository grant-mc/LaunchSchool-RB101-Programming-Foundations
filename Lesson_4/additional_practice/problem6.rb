flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map { |n| n.slice!(3,n.size) }
p flintstones

#BEST SOLUTION
#flintstones.map! { |name| name[0,3] }