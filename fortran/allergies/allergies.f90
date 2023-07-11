
module allergies
  implicit none
  character(12), parameter :: allergenes(0:7) = [character(12) :: &
          'eggs', 'peanuts', 'shellfish', 'strawberries', &
          'tomatoes', 'chocolate', 'pollen', 'cats']

contains

  logical function allergicTo(allergy_str, allergy_key)
    character(*), intent(in) :: allergy_str
    integer, intent(in) :: allergy_key

    allergicTo = index(allergicList(allergy_key), allergy_str) /= 0

  end function


  function allergicList(allergy_key)
    integer, intent(in) :: allergy_key
    character(len=100) :: allergicList
    integer :: i

    allergicList = ''
    do i = 0, 7
      if (btest(allergy_key, i)) then
        allergicList = trim(allergicList) // ' ' // trim(allergenes(i))
      end if
    end do
    allergicList = adjustl(allergicList)

  end function

end module
