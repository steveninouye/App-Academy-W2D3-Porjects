class Array

  def my_uniq
    self.uniq
  end

  def two_sum
    result = []
    (0..self.length-2).each do |i|
      (i + 1..self.length-1).each do |j|
        result << [i,j] if self[i] + self[j] == 0
      end
    end
    result
  end

  def my_transpose
    self.transpose
  end

  def stock_picker
    maximum_difference = 0
    result = nil
    (0..self.length-2).each do |i|
      (i + 1..self.length-1).each do |j|
        if self[j]-self[i] > maximum_difference
          result = [i,j]
          maximum_difference = self[j] - self[i]
        end
      end
    end
    result
  end

end
