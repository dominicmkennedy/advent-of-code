module Main (main) where

import Data.List (sort, transpose)
import Data.List.Split

parseData :: String -> ([Int], [Int])
parseData input = (head mat, last mat)
  where
    mat = transpose . toInt . init $ splitData input
    splitData x = map (splitOn "   ") $ splitOn "\n" x
    toInt = map (map read)

partOne :: ([Int], [Int]) -> Int
partOne (a, b) = sum . map abs $ zipWith subtract (sort a) (sort b)

partTwo :: ([Int], [Int]) -> Int
partTwo (a, b) = sum $ zipWith (*) (map isEq a) a
  where
    isEq x = length . filter id $ map (== x) b

main :: IO ()
main = do
  contents <- readFile "../input/day_01_input.txt"
  let x = parseData contents
  print $ partOne x
  print $ partTwo x
