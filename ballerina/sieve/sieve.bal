const MARKS = 1001;

# Returns the prime numbers less than or equal to the given limit.
#
# + 'limit - as an int
# + return - prime numbers as an array of int
public function primes(int 'limit) returns int[] {
    int[] primes = [];
    boolean[MARKS] marked = [];

    foreach int i in 2 ... 'limit {
        if !marked[i] {
            primes.push(i);
            foreach int j in 2 ... 'limit/i {
                marked[i*j] = true;
            }
        }
    }
    return primes;
}
