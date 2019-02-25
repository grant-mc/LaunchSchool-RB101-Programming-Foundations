vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'Car'
]

vehicles.map(&:downcase).uniq.each { |v| puts"#{v} => #{vehicles.map(&:downcase).count(v)}" }