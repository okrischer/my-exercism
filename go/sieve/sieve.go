package sieve

func Sieve(limit int) []int {
	primes := make([]int, limit/2)
	marks := make([]bool, limit+1)
	px := 0

	for i := 2; i <= limit; i++ {
		if !marks[i] {
			primes[px] = i
			px++
			for m := i; m <= limit; m += i {
				marks[m] = true
			}
		}
	}

	return primes[:px]
}
