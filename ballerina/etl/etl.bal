public function transform(map<string[]> old) returns map<int> {
    map<int> result = {};
    foreach var score in old.keys() {
        foreach var letter in old.get(score) {
            int|error value = int:fromString(score);
            if value !is error {
                result[letter.toLowerAscii()] = value;
            }
        }
    }
    return result;
}
