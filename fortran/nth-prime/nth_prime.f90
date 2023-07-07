module nth_prime
  implicit none
contains

  ! get nth prime
  integer function prime(n)
    integer, intent(in) :: n
    integer :: primes(n)
    integer :: ctr, next, i

    if (n < 1) then
      prime = -1
    else
      primes(1) = 2
      ctr = 1
      next = 1

      outer: do while (ctr < n)
        next = next + 2
        do i = 1, ctr
          if (mod(next, primes(i)) == 0) cycle outer
        end do
        ctr = ctr + 1
        primes(ctr) = next
      end do outer

      prime = primes(n)
    end if

  end function

end module
