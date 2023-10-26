module Anagram
  def self.find(subject : String, candidates : Array(String)) : Array(String)
    candidates
      .reject!(&.upcase.== subject.upcase)
      .select!(&.upcase.chars.sort.== subject.upcase.chars.sort)
  end
end
