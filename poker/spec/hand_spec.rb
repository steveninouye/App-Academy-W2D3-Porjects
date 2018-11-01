require "hand"

RSpec.describe Hand do
  subject(:hand) {Hand.new([1,2,3,4,5])}
  describe "#initialize" do
    it "holds five cards" do
      expect(hand.cards.length).to eq(5)
    end
  end

  describe "#discard" do
    it "should accept an array of indices" do
      expect(hand.discard([3])).to_not raise_error
    end

    it "should not discard more than 3 cards" do
      expect(hand.discard([1,2,3,4])).to raise_error("you cannot discard more than 3 cards")
    end
  end

  describe "#receive" do
    it "should put cards into the hand" do
      hand.discard([1,2])
      hand.receive([5,6])
      expect(hand.cards.length).to eq(5)
      expect(hand.cards).to include(5,6)
    end

    it "@cards should should hold the cards received" do
      hand.receive([5,6])
      expect(hand.cards).to include(5,6)    
    end
  end

  describe "#evaluate" do
    it "evaluates the hand"
  end

end
