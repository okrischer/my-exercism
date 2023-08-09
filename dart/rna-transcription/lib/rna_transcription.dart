class RnaTranscription {
  String toRna(String dna) => dna
      .split('')
      .map((d) => switch (d) {
            'G' => 'C',
            'C' => 'G',
            'T' => 'A',
            'A' => 'U',
            _ => ''
          })
      .join();
}
