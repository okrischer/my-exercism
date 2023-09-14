unit module PrimeFactors;

sub factors (Int:D $n is copy) is export {
  my $k = 2;
  gather {
    while $k**2 <= $n and $n > 1 {
      while $n %% $k {
        take $k;
        $n div= $k;
      }
      $k++;
    }
    take $n if $n > 1;
  }
}
