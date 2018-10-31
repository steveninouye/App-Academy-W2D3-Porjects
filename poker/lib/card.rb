class Card
  attr_reader :value, :suit

  VALUES = {
    1 => "A",
    2 => "2",
    3 => "3",
    4 => "4",
    5 => "5",
    6 => "6",
    7 => "7",
    8 => "8",
    9 => "9",
    10 => "10",
    11 => "J",
    12 => "Q",
    13 => "K"
  }

  SUITS = [:spade, :clover, :diamond, :heart]



  def initialize(value, suit)
    raise "invalid value" unless VALUES.keys.include?(value)
    raise "invalid suit" unless SUITS.include?(suit)
    @value = value
    @suit = suit
  end


end
