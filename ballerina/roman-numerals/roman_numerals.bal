type Numeral record {int d; string r;};
final Numeral[] NUMERALS = [
    {d: 1000, r: "M"},
    {d: 900, r: "CM"},
    {d: 500, r: "D"},
    {d: 400, r: "CD"},
    {d: 100, r: "C"},
    {d: 90, r: "XC"},
    {d: 50, r: "L"},
    {d: 40, r: "XL"},
    {d: 10, r: "X"},
    {d: 9, r: "IX"},
    {d: 5, r: "V"},
    {d: 4, r: "IV"},
    {d: 1, r: "I"}
];

function roman(int number) returns string {
    string result = "";
    int n = number;
    foreach var dr in NUMERALS {
        while n >= dr.d {
            n -= dr.d;
            result += dr.r;
        }
    }
    return result;
}
