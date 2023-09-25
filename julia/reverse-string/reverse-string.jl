const TEST_GRAPHEMES = true

using Unicode

myreverse(word) = collect(graphemes(word))[end:-1:1] |> join
