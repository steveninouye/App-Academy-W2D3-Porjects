require 'deck'

RSpec.describe Deck do
  subject(:deck) {Deck.new([1,2,3,4])}

  describe "#initialize" do
    it "makes a 52 card deck" do
      expect(Deck.array_of_cards.cards.length).to eq(52)
    end
  end

  describe "#add_card" do
    it "adds card to the bottom of the deck" do
      deck.add_card(:apple)
      expect(deck.cards[0]).to eq(:apple)
    end
  end

  describe "#give_card" do
    it "gives out card" do
      expect(deck.give_card(1)).to eq([4])
    end

    it "cannot give out more cards than what's in the deck" do
      expect {deck.give_card(10000)}.to raise_error "not enough cards"
    end
  end

  describe "#shuffle"  do
    it "shuffles the deck" do
      old_deck = deck.cards.dup
      expect(deck.shuffle).to_not eq(old_deck)
    end
  end
end
