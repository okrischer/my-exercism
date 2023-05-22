# Find the unique multiples of the given factors that are less than the limit.
# Return the sum of the multiples.
#
# + factors - an array of integers
# + 'limit - the upper limit of the multiples
# + return - the sum of the multiples
public function sum(int[] factors, int 'limit) returns int {
    map<int> multiples = {};
    foreach int f in factors {
        if f > 0 {
            foreach int m in int:range(f, 'limit, f) {
                multiples[m.toString()] = m;
            }
        }
    }
    int total = 0;
    multiples.forEach(function (int m) {
        total += m;
    });
    return total;
}
