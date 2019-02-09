flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index { |n| n.include?('Be')}
# BEST SOLUTION
# flintstones.index { |name| name[0, 2] == "Be" }
