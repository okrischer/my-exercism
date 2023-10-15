class Reactor
  def self.is_criticality_balanced?(temperature, neutrons_emitted)
    temperature < 800 && neutrons_emitted > 500 && temperature * neutrons_emitted < 500000
  end

  def self.reactor_efficiency(voltage, current, theoretical_max_power)
    generated_power = voltage * current
    efficiency = (generated_power / theoretical_max_power) * 100
    case efficiency
    when .>= 80 then "green"
    when .>= 60 then "orange"
    when .>= 30 then "red"
    else "black"
    end
  end

  def self.fail_safe(temperature, neutrons_produced_per_second, threshold)
    status = temperature * neutrons_produced_per_second
    case status
    when .< threshold * 0.9 then "LOW"
    when .<= threshold * 1.1 then "NORMAL"
    else "DANGER"
    end
  end
end
