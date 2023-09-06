unit module Hamming;

sub hamming-distance ( $strand1, $strand2 ) is export {
  $strand1.chars == $strand2.chars or die "strands must be of equal length";
  ($strand1.comb Z $strand2.comb).grep(-> (\a, \b) { a ne b}).elems
}
