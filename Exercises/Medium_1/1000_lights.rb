def switch_lights(num_lights)
  lights = []
  num_lights.times { lights << nil}
  return lights if num_lights == 1
  s = 1
  while s <= num_lights
    for idx in (s..num_lights).step(s)
      lights[idx-1] ? lights[idx-1] = false : lights[idx-1] = true
    end
    #puts("Round\##{s}: #{lights}")
    s += 1
  end
  results = []
  lights.each_index.select do |idx|
    results << idx + 1 if lights[idx] == true
  end
  results
end

p switch_lights(5)
p switch_lights(10)