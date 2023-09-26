module Series (Error(..), largestProduct) where
import Data.Char (isDigit, digitToInt)

data Error = InvalidSpan | InvalidDigit Char deriving (Show, Eq)

largestProduct :: Int -> String -> Either Error Int
largestProduct size digits
  | size > length digits || size < 0 = Left InvalidSpan
  | not (all isDigit digits) = Left (InvalidDigit (head (filter (not . isDigit) digits)))
  | otherwise = Right (maximum (getProduct size digits))

getProduct :: Int -> String -> [Int]
getProduct size digits
  | length digits < size = []
  | otherwise = p : getProduct size (tail digits)
  where p = product $ map digitToInt $ take size digits

