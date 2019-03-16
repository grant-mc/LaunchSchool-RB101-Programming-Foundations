BLOCKS = {'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
'V' => 'I', 'L' => 'Y', 'Z' => 'M'}

def block_word?(string)
  string = string.upcase
  BLOCKS.each_pair { |k, v| string.include?(k) && string.include?(v) ? (return false) : (next)}
  return true
end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
