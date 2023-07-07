
module collatz_conjecture
  implicit none
contains

  integer function steps(n)
    integer, intent(in) :: n
    integer :: m

    if (n < 1) then
      steps = -1
      return
    end if

    m = n
    steps = 0

    do while (m > 1)
      if (mod(m, 2) == 0) then
        m = m / 2
      else
        m = m * 3 + 1
      end if
      steps = steps + 1
    end do

  end function

end module
