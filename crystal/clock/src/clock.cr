class Clock

  protected getter minutes : Int32

  def initialize(hour : Int32 = 0, minute : Int32 = 0)
    @minutes = (hour * 60 + minute) % (24 * 60)
  end

  def +(other : self) : self
    Clock.new(minute: @minutes + other.minutes)
  end

  def -(other : self) : self
    Clock.new(minute: @minutes - other.minutes)
  end

  def ==(other : self) : Bool
    @minutes == other.minutes
  end

  def to_s : String
    sprintf "%02d:%02d", (@minutes // 60) % 24, @minutes % 60
  end

end
