class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def placement(i)
    if i < 10
      "0#{i}"
    else
      "#{i}"
    end
  end

  def time_string
    @minutes = @seconds / 60
    @seconds = @seconds % 60
    @hours = @minutes / 60
    @minutes = @minutes % 60
    "#{placement(@hours)}:#{placement(@minutes)}:#{placement(@seconds)}"
  end

  def placement(num)
    if num == 0
      "00"
    elsif num > 0 and num < 10
      "0#{num}"
    else
      "#{num}"
    end
  end
end


# Official solution
# class Timer
#   attr_accessor :seconds

#   def initialize
#     @seconds = 0
#   end

#   def time_string
#     hours = @seconds/3600
#     remainder = @seconds%3600
#     sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
#   end
  
# end