module Acronym
  def self.abbreviate(phrase : String) : String
    phrase.split(/[-_\s]/).map(&.[0]?).join.upcase
  end
end
