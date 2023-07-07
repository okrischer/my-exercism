# optimized version: about 100 times faster than naive version
function prime_factors(n)

  factors = []
  k = 3

  # factor out all even factors; after this step n is odd
  while n % 2 == 0
    push!(factors, 2)
    n ÷= 2
  end

  # iterate over all odd numbers up to sqrt(n), starting with 3
  # stop if n == 1, as all factors already have been factored out
  while k * k <= n && n > 1
    while n % k == 0
      push!(factors, k)
      n ÷= k
    end
    k += 2 # increment k by 2 to get the next odd number
  end

  # if n > 1 (and therefore k*k > n) then n is the largest factor
  # because ever number can only have one factor larger than its sqrt
  if n > 1
    push!(factors, n)
  end

  factors
end


function prime_naive(n)
  factors = []
  k = 2
  while k <= n
    while n % k == 0
      push!(factors, k)
      n ÷= k
    end
    k += 1
  end
  factors
end

