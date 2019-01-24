def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

# notice how they changed the result to an original variable and an assignment
# to make it clear a mutation is happening




puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"