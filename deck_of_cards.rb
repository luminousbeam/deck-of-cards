require 'pry'

def deck_of_cards
  card_values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  suits = ['hearts', 'diamonds', 'clubs', 'spades']

  deck = []

  suits.each do |current_suit|
    card_values.each do |current_value|
      new_card = {suit: current_suit, card_value: current_value}
      deck << new_card
    end
  end

  return deck.shuffle
end

cards = deck_of_cards()

top_card = cards.last
puts "The deck has #{cards.length} cards"
puts "The top card is the #{top_card[:card_value]} of #{top_card[:suit]}"

players = []

5.times do
  top_five_cards = cards.pop(5)
  players << top_five_cards
end

players.each do |players_hand|
  puts "Player has"
  players_hand.each do |card|
    puts "The #{card[:card_value]} of #{card[:suit]}"
  end
end
