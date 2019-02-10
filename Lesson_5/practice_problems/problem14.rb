hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
info_arr = []
hsh.each_value do |info|
  if info[:type] == 'fruit'
    info_arr << info[:colors].map { |color| color.capitalize }
  else
    info_arr << info[:size].upcase
  end
end

p info_arr