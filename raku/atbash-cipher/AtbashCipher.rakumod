unit module AtbashCipher;

sub encode (Str $phrase --> Str) is export {
  cipher($phrase).comb(5).join(' ');
}

sub decode (Str $phrase --> Str) is export {
  cipher($phrase);
}

sub cipher(Str $phrase --> Str) {
  $phrase.lc.trans(('a'..'z') => ('z'...'a')).comb(/\w/).join;
}
