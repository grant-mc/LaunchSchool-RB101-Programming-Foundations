ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
min_age = ages["Herman"]
ages.each { |key, value| min_age = value if value < min_age }
#   if value < min_age
#     min_age = value
#   end
# end
p min_age

#BEST SOLUTION
#ages.values.min