require_relative 'card'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def self.array_of_cards
    cards = []
    Card::SUITS.each do |suit|
      Card::VALUES.keys.each do |value|
        cards << Card.new(value, suit)
      end
    end
    Deck.new(cards)
  end

  def add_card(card)
    @cards.unshift(card)
  end

  def give_card(num)
    raise 'not enough cards' if num > @cards.length
    cards_given = []
    num.times{cards_given << @cards.pop}
    cards_given
  end

  def shuffle
    @cards.shuffle!
  end

end
