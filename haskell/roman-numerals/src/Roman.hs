module Roman (numerals) where

numerals :: Integer -> Maybe String
numerals n
    | n < 0 = Nothing
    | n == 0 = Just ""
    | otherwise = (++) roman <$> numerals (n - decimal)
    where (decimal, roman) = head $ filter ((<=n) . fst) romans

romans :: [(Integer, String)]
romans =
    [ (1000, "M"), (900, "CM"), (500, "D"), (400, "CD")
    , (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X")
    , (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
    ]

