class TowersOfHanoi
  attr_reader :stacks

  def initialize
    @stacks = [[3,2,1],[],[]]
  end

  def move_disc(stack1, stack2)
    raise "stack is empty" if stacks[stack1].empty?
    if !stacks[stack2].empty? && stacks[stack1].last > stacks[stack2].last
      raise "cannot move larger disc onto smaller disc"
    end

    disc = self.stacks[stack1].pop
    self.stacks[stack2] << disc
  end

  def get_user_input
    input = gets.chomp
    raise "Invalid input" unless ("0".."9").include?(input)
    input.to_i
  end

  def won?
    stacks[1] == [3,2,1] || stacks[2] == [3,2,1] 
  end

end
