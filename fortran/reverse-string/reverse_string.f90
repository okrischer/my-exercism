module reverse_string
  implicit none
contains

  function reverse(input) result(reversed)
    character(*), intent(in) :: input
    character(len=len(input)) :: reversed
    integer :: i, s

    s = len(input) + 1
    do i = 1, s
      reversed(i:i) = input(s-i:s-i)
    end do

  end function

end module
