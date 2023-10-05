class Navigation
  NEPTUNE_DISTANCE = 4_400_000_000
  MARS_DISTANCE = 227_940_000
  ATMOSPHERE_DISTANCE = 10_000_i16

  def correct_area_analysis(measurement : Int32) : UInt32
    measurement.to_u32
  end

  def calculate_velocity(distance : Float32, time : Float32) : Float32
    distance / time
  end
end
