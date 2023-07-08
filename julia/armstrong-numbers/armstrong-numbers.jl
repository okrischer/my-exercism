function isarmstrong(n)
  dn = digits(n)
  nd = ndigits(n)
  sum(dn.^nd) == n
end