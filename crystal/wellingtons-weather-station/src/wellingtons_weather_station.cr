class Temperature
  KELVIN = 273.15
  FAHRENHEIT = 32
  C_TO_F = 1.8

  def to_kelvin(celsius : Float64) : Float64
    celsius + KELVIN
  end

  def round(celsius : Float64) : Float64
    celsius.round(1)
  end

  def to_fahrenheit(celsius : Float64) : Int32
    (celsius * C_TO_F + FAHRENHEIT).to_i
  end

  def number_missing_sensors(number_of_sensors : Int32) : Int32
    (4 - number_of_sensors % 4) % 4
  end
end
