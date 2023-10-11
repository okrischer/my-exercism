class SimpleCipher

  S = 'a' # setting 'a' as starting point

  getter key : String

  def initialize(key : String = generate_key)
    @key = /^[a-z]+$/.matches?(key) ? key : raise "unvalid key"
  end

  def generate_key() : String
    (1..10).join { ('a'..'z').sample(10).join }
  end

  def encode(text : String) : String
    zip_with_key(text).map { |c, k| shift(c, k, &.+) }.join
  end

  def decode(text : String) : String
    zip_with_key(text).map { |c, k| shift(c, k, &.-) }.join
  end

  private def zip_with_key(text : String)
    text.each_char.zip(@key.each_char.cycle)
  end

  private def shift(c : Char, k : Char, &op) : Char
    S + (c - S + yield k - S) % 26
  end
end
