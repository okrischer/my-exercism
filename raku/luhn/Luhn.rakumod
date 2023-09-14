unit module Luhn;

sub is-luhn-valid (Str $input is copy --> Bool) is export {
  $input ~~ s:g/\s//;
  ($input ~~ /\D/ or $input.chars < 2) and return False;
  my $checksum = 0;

  for $input.flip.comb.kv -> $i, $d is copy {
    $d = ($d > 4) ?? $d * 2 - 9 !! $d * 2 if $i % 2 == 1;
    $checksum += $d;
  }
  $checksum %% 10;
}
