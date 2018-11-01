require_relative 'deck'

class Hand

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def self.new_hand
    Hand.new(Deck.give_card(5))
  end

end
