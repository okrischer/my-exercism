"hamming distance"
function distance(s1, s2)
  length(s1) == length(s2) || throw(ArgumentError("different strand lengths"))
  map(!=, s1, s2) |> count
end