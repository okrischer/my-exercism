type Sound record {int factor; string sound;};
final Sound[] sounds = [
    {factor: 3, sound: "Pling"},
    {factor: 5, sound: "Plang"},
    {factor: 7, sound: "Plong"}
    ];

public function convert(int n) returns string {
    string result = "";
    foreach var s in sounds {
        if n % s.factor == 0 {
            result += s.sound;
        }
    }
    return result.length() == 0 ? n.toString() : result;
}
