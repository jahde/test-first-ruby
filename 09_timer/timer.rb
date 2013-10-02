class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0        #set seconds instance to zero to begin with
  end
  
  # converting seconds into relevant time formats
  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = (@seconds % 3600) % 60
  
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"    #use padded method to aid in styling like a stopwatch
  end
  
  # Any number from 0-9 add a "0" in front of it. Otherwise use the number alone
  def padded(num)
    if num < 10
      "0" + num.to_s
    else
      num.to_s
    end
  end
  
end