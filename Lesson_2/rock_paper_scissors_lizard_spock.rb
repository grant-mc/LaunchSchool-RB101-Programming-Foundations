DISPLAY_CHOICES = %w(rock(r) paper(p) scissors(s) lizard(l) spock(sp))
USER_SELECTION = { r: 'rock',
                   p: 'paper',
                   s: 'scissors',
                   l: 'lizard',
                   sp: 'spock' }
COMPUTER_SELECTION = %w(rock paper scissors lizard spock)
COMBOS = { rock: %w(scissors lizard),
           paper: %w(rock spock),
           scissors: %w(paper lizard),
           lizard: %w(paper spock),
           spock: %w(rock scissors) }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  COMBOS[first.to_sym()].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{DISPLAY_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if USER_SELECTION.key?(choice.to_sym())
      choice = USER_SELECTION[choice.to_sym()]
      break
    elsif USER_SELECTION.value?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = COMPUTER_SELECTION.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
