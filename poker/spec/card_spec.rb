require "card"

RSpec.describe Card do
  subject(:card) { Card.new(2, :spade) }

  describe "#initialize" do
    it "initializes with value and suit past" do
      expect(card.value).to eq(2)
      expect(card.suit).to eq(:spade)
    end

    context "when intialized with invalid values" do
      it "raises an error if given invalid suit" do
        expect { Card.new(2, :apple) }.to raise_error "invalid suit"
      end

      it "raises an error if given invalid value" do
        expect { Card.new(:apple, :spade) }.to raise_error "invalid value"
      end
    end
  end


end
