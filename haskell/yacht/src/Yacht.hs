{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Yacht (yacht, Category(..)) where
import Data.List (sort, group)

data Category = Ones
              | Twos
              | Threes
              | Fours
              | Fives
              | Sixes
              | FullHouse
              | FourOfAKind
              | LittleStraight
              | BigStraight
              | Choice
              | Yacht

yacht :: Category -> [Int] -> Int
yacht Ones              = single 1
yacht Twos              = single 2
yacht Threes            = single 3
yacht Fours             = single 4
yacht Fives             = single 5
yacht Sixes             = single 6
yacht FullHouse         = fullHouse
yacht FourOfAKind       = fourOfAKind
yacht LittleStraight    = littleStraight
yacht BigStraight       = bigStraight
yacht Choice            = sum
yacht Yacht             = checkYacht

single :: Int -> [Int] -> Int
single value = sum.filter (== value)

fullHouse :: [Int] -> Int
fullHouse dice
    | isFH dice = sum dice
    | otherwise = 0
    where isFH = (== [2, 3]) . sort . map length . group . sort

fourOfAKind :: [Int] -> Int
fourOfAKind =  sum . map ((*4) . head) . filter ((>3) . length) . group . sort

littleStraight :: [Int] -> Int
littleStraight dice = if sort dice == [1..5] then 30 else 0

bigStraight :: [Int] -> Int
bigStraight dice = if sort dice == [2..6] then 30 else 0

checkYacht :: [Int] -> Int
checkYacht (d:ds) | all (== d) ds = 50
                  | otherwise     = 0
