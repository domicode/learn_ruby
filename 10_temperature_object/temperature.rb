class Temperature

  def initialize(hash)
    @hash = hash
    @@hashclass = {}
  end

  def to_fahrenheit
    if @hash.has_key?(:f)
    @hash[:f]
    else
    (@hash[:c] * 1.8 + 32).round(1)
    end
  end

  def to_celsius
      if @hash.has_key?(:f)
    ((@hash[:f] - 32.0) / 1.8).ceil
      else
      @hash[:c]
      end
  end

  def self.in_celsius(num)
    Temperature.new({:c => num})
  end

  def self.in_fahrenheit(num)
    Temperature.new({:f => num})
  end


end

class Celsius < Temperature

  def initialize(num)
    @celcius = num
  end

  def to_celsius
    @celcius
  end

  def to_fahrenheit
    (@celcius * 1.8 + 32).round(1)
  end

end


class Fahrenheit < Temperature

  def initialize(num)
    @fahrenheit = num
  end

  def to_fahrenheit
    @fahrenheit
  end

  def to_celsius
    ((@fahrenheit - 32.0) / 1.8).ceil
  end
    
end