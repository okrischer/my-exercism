module bob
  implicit none
contains

  function hey(statement)
    character(*), intent(in) :: statement
    character(100) :: hey
    character(1) :: c
    integer :: s, i
    logical :: isQuestion, isShouting, upperCase, lowerCase

    s = len(trim(statement))
    isQuestion = statement(s:s) == '?'
    upperCase = .false.
    lowerCase = .false.

    do i = 1, s
      c = statement(i:i)
      upperCase = upperCase .or. (c >= 'A' .and. c <= 'Z')
      lowerCase = lowerCase .or. (c >= 'a' .and. c <= 'z')
    end do

    isShouting = upperCase .and. .not. lowerCase

    if (s == 0) then
      hey = "Fine. Be that way!"
    else if (isShouting .and. isQuestion) then
      hey = "Calm down, I know what I'm doing!"
    else if (isShouting) then
      hey = "Whoa, chill out!"
    else if (isQuestion) then
      hey = 'Sure.'
    else
      hey = 'Whatever.'
    end if

  end function hey

end module bob
