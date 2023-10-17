class PasswordLock

  alias PT = (Int32 | String | Float64)
  @password : PT

  def initialize(@password : PT)
  end

  def encrypt
    @password = encrypt(@password)
  end

  def unlock?(pw : PT) : String?
    "Unlocked" if encrypt(pw) == @password
  end

  private def encrypt(pw : PT) : PT
    return (pw / 2).round if pw.is_a?(Int32)
    return pw * 4 if pw.is_a?(Float64)
    pw.reverse
  end
end
