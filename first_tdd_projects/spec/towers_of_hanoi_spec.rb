require "towers_of_hanoi"

RSpec.describe TowersOfHanoi do
  subject(:newgame) {TowersOfHanoi.new}

  describe "#initialize" do
    it "initializes with three stacks, one of which has all discs" do
      expect(newgame.stacks).to include([3,2,1])
    end
  end

  describe "#move_disc" do
    it "moves disc from one stack to another" do
      newgame.move_disc(0, 1)
      expect(newgame.stacks).to include([3,2])
      expect(newgame.stacks).to include([1])
    end

    it "does not move a bigger disc onto a smaller disc" do
      newgame.move_disc(0, 1)
      expect {newgame.move_disc(0, 1)}.to raise_error("cannot move larger disc onto smaller disc")
    end

    it "raises an error when the user tries to move disc from empty stack" do
       expect {newgame.move_disc(2,1)}.to raise_error("stack is empty")
    end
  end

  describe "#get_user_input" do
    it "allows only integers" do
      $stdin = StringIO.new("0")
      expect(newgame.get_user_input.to_s).to match(/[0-9]/)
    end

    it "raises an error if there's an invalid input" do
      $stdin = StringIO.new("a")
      expect {newgame.get_user_input}.to raise_error "Invalid input"
    end
  end

  describe "#won" do
    it "returns true when game is won" do
      newgame.move_disc(0, 1)
      newgame.move_disc(0, 2)
      newgame.move_disc(1, 2)
      newgame.move_disc(0, 1)
      newgame.move_disc(2, 0)
      newgame.move_disc(2, 1)
      newgame.move_disc(0, 1)
      # expect(newgame).to be_won
      expect(newgame.won?).to be true
    end
  end

  # play method

end
