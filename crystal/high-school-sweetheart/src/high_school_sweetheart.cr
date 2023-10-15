class HighSchoolSweetheart
  def self.clean_up_name(name : String) : String
    name.gsub("-", " ").strip
  end

  def self.first_letter(name : String) : Char
    clean_up_name(name)[0]
  end

  def self.initial(name : String) : String
    first_letter(name).upcase + "."
  end

  def self.pair(name1 : String, name2 : String) : String
    "❤ #{initial(name1)}  +  #{initial(name2)} ❤"
  end
end
