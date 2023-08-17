class PhoneNumber {
  String clean(String input) {
    if (input.contains(RegExp(r'[a-zA-Z]')))
      throw FormatException('letters not permitted');
    if (input.contains(RegExp(r'[@:!]')))
      throw FormatException('punctuations not permitted');
    var digits = input.replaceAll(RegExp(r'\D+'), '');
    if (digits.length < 10) throw FormatException('incorrect number of digits');
    if (digits.length == 11) {
      if (!digits.startsWith('1'))
        throw FormatException('11 digits must start with 1');
      else if (digits.substring(1, 2) == '0')
        throw FormatException('area code cannot start with zero');
      else if (digits.substring(1, 2) == '1')
        throw FormatException('area code cannot start with one');
      else if (digits.substring(4, 5) == '0')
        throw FormatException('exchange code cannot start with zero');
      else if (digits.substring(4, 5) == '1')
        throw FormatException('exchange code cannot start with one');
      else
        return digits.substring(1);
    }
    if (digits.length > 11) throw FormatException('more than 11 digits');
    // digits has now length 10
    if (digits.startsWith('0'))
      throw FormatException('area code cannot start with zero');
    if (digits.startsWith('1'))
      throw FormatException('area code cannot start with one');
    if (digits.substring(3, 4) == '0')
      throw FormatException('exchange code cannot start with zero');
    if (digits.substring(3, 4) == '1')
      throw FormatException('exchange code cannot start with one');
    return digits;
  }
}
