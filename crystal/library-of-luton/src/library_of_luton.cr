class Library
  def self.first_letter(title : String) : Char
    title[0]
  end

  def self.initials(first_name : String, last_name : String) : String
    "#{first_name[0]}.#{last_name[0]}"
  end

  def self.decrypt_character(character : Char) : Char
    case character
      when 'A' then 'Z'
      when 'a' then 'z'
      when .letter? then character.pred
      else character
    end
  end

  def self.decrypt_text(text : String) : String
    text.chars.map { |c| decrypt_character(c) }.join
  end
end
