CARDS = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
FACE_CARDS = ['Jack', 'Queen', 'King']

def prompt(msg)
  puts "=> #{msg}"
end

def intialize_deck
  deck = []
  4.times { CARDS.each { |card| deck << card } }
  deck.shuffle!
end

def deal_hand(deck)
  hand = []
  2.times { hand << deck.pop }
  hand
end

def deal_a_card(hand, deck)
  hand << deck.pop
end

def total(hand)
  total_value = 0
  hand.each do |card|
    if card == "Ace"
      total_value += 11
    elsif card.to_i == 0
      total_value += 10
    else
      total_value += card
    end
  end

  hand.select { |card| card == "Ace" }.count.times do
    total_value -= 10 if total_value > 21
  end
  total_value
end

def busted?(hand)
  total(hand) > 21
end

def player_turn(player_hand, deck)
  loop do
    prompt "Would you like to 'hit' or 'stay'?"
    answer = gets.chomp
    deal_a_card(player_hand, deck) if answer == 'hit'
    break if answer == 'stay' || busted?(player_hand)
    prompt "Your hand is now #{player_hand}"
  end
end

def dealer_turn(comp_hand, deck)
  loop do
    break if total(comp_hand) >= 17
    deal_a_card(comp_hand, deck) if total(comp_hand) < 17
  end
end

def determine_results(player_total, comp_total)
  if player_total > comp_total
    'player'
  elsif comp_total > player_total
    'computer'
  else
    nil
  end
end

def display_results(player_total, comp_total)
  if determine_results(player_total, comp_total) == 'player'
    prompt "The player has: #{player_total} \
The computer has: #{comp_total} The player wins!"
  elsif determine_results(player_total, comp_total) == 'computer'
    prompt "The player has: #{player_total} \
The computer has: #{comp_total} The computer wins!"
  else
    prompt "The player has: #{player_total} \
The computer has: #{comp_total} It's a tie!"
  end
end

def play_again?
  prompt "Would you like to play again?"
  gets.chomp.include?('y')
end

loop do
  deck = intialize_deck
  player_hand = deal_hand(deck)
  comp_hand = deal_hand(deck)
  prompt "Dealer has: An unknown card and a #{comp_hand[1]}"
  prompt "You have: A #{player_hand[0]} and a #{player_hand[1]}"
  prompt ""
  prompt "It's the Player's turn!"
  player_turn(player_hand, deck)

  if busted?(player_hand)
    prompt "The player has busted, the computer wins!" 
    play_again? ? next : break
  end

  dealer_turn(comp_hand, deck)
  if busted?(comp_hand)
    prompt "The computer has busted, the player wins!"
    play_again? ? next : break
  end

  player_total = total(player_hand)
  comp_total = total(comp_hand)
  display_results(player_total, comp_total)
  play_again? ? next : break
end
