class Array

  def sum
    sum = 0

    self.inject(0) { |sum, element| sum + element }
  end

  def square
    self.map do |x|
      x ** 2
    end
  end

  def square!
     self.map! do |x|
      x ** 2
    end
  end

end
