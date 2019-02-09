process_the_loop = [true, false].sample

if process_the_loop
  loop do
    p "The loop was processed!"
    break
  end
else
  p"The loop wasn't processed!"
end