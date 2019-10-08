class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def placement(i)
    if i < 10
      "0#{i}"
    else
      "#{i}"
    end
  end

  def time_string
    if seconds == 0
      "00:00:00"
    else
    "00:00:#{seconds}"
    end
  end
end
