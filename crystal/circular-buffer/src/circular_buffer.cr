class CircularBuffer

  def initialize(@size : Int32)
    @buffer = [] of Int32
  end

  def read : Int32
    @buffer.shift? || raise RuntimeError.new
  end

  def write(elem : Int32)
    raise RuntimeError.new if buffer_full?
    @buffer << elem
  end

  def clear
    @buffer.clear
  end

  def overwrite(elem : Int32)
    @buffer.shift if buffer_full?
    @buffer << elem
  end

  private def buffer_full? : Bool
    @buffer.size == @size
  end

end
