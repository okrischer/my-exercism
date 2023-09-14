sub series (Str $string, Int $length where 1..$string.chars --> Seq) is export {
  gather take .join for $string.comb.rotor($length => - $length.pred)
}
