class Matrix

  @matrix : Array(Array(Int32))

  def initialize(input : String)
    @matrix = input.lines.map &.split.map &.to_i
  end

  def row(i : Int32) : Array(Int32)
    @matrix[i-1]
  end

  def column(i : Int32) : Array(Int32)
    @matrix.transpose[i-1]
  end
end
