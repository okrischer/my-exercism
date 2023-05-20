public function isIsogram(string sentence) returns boolean {
    var codepoints = sentence.toLowerAscii().toCodePointInts();
    var letters = codepoints.filter(d => d > 96 && d < 123);
    map<int> counter = {};
    foreach var l in letters {
        counter[l.toString()] = l;
    }
    return counter.keys().length() == letters.length();
}
