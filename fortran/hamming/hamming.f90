module hamming
  implicit none
contains

  function compute(strand1, strand2, distance)
      character(*), intent(in) :: strand1, strand2
      integer, intent(out) :: distance
      logical :: compute
      integer :: i

      distance = 0

      if ( len(strand1) /= len(strand2) ) then
        compute = .false.
      else
        compute = .true.
        do i = 1, len(strand1)
          if ( strand1(i:i) /= strand2(i:i) ) distance = distance + 1
        end do
      end if

  end function compute

end module hamming
