
module armstrong_numbers
  implicit none
contains

  ! solution without intermediate array
  logical function isArmstrongNumber(n)
    integer, intent(in) :: n
    integer :: nd, m, s

    ! single digit numbers are armstrong numbers
    if (n < 10) then
      isArmstrongNumber = .true.
      return
    end if

    nd = floor(log10(real(n))) + 1 ! number of digits
    m = n  ! since n should not be writeable
    s = 0  ! current sum of digits

    ! add up powers of digits
    do while (m > 0)
      s = s + mod(m, 10) ** nd
      m = m/10
    end do

    isArmstrongNumber = n == s

  end function

end module
