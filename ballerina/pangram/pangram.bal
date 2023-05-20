public function isPangram(string sentence) returns boolean {
    if sentence.length() < 26 {
        return false;
    }
    var lower = sentence.toLowerAscii();
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    foreach var letter in alphabet {
        if lower.indexOf(letter) == () {
            return false;
        }
    }
    return true;
}
