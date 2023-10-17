class CastleDinner
  def self.check_food?(food : String) : String | Nil
    food if food == "Mushroom pasties"
  end

  def self.check_drink?(drink : String) : String | Nil
    drink if drink =~ /I/i
  end

  def self.replace_drink(drink : String) : String
    check_drink?(drink) || "Apple juice"
  end
end
