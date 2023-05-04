{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA [] = Right []
toRNA (x:xs)
    | x `notElem` "GCTA" = Left x
    | otherwise = (:) n <$> toRNA xs
    where n = case x of
            'G' -> 'C'
            'C' -> 'G'
            'T' -> 'A'
            'A' -> 'U'
    