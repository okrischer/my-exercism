
module high_scores
  implicit none
contains

function scores(score_list)
  integer, intent(in) :: score_list(:)
  integer, dimension(size(score_list)) :: scores

  scores = score_list
end function

integer function latest(score_list)
  integer, intent(in) :: score_list(:)
  integer :: s

  s = size(score_list)
  latest = score_list(s)
end function

integer function personalBest(score_list)
  integer, intent(in) :: score_list(:)

  personalBest = maxval(score_list)

end function

function personalTopThree(score_list) result(ptt)
  integer, intent(in) :: score_list(:)
  integer, dimension(size(score_list)) :: myscores
  integer :: ptt(3)
  integer :: i, ml

  myscores = score_list

  do i = 1, 3
    ml = maxloc(myscores, 1)
    ptt(i) = myscores(ml)
    myscores(ml) = 0
  end do

end function

end module
