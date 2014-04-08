class Timer

  attr_accessor :seconds


  def initialize
    @seconds = 0
  end

  # def seconds=(seconds)
  #   @seconds = seconds
  # end

  # def seconds
  #   @seconds 
  # end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = @seconds / (60 * 60)
    time = Time.new(2007,11,19,hours,minutes,seconds)
    time.strftime "%H:%M:%S"
  end


end