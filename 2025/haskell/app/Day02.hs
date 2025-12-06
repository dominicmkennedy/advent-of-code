module Main where

import Data.Bool       (bool)
import Data.List.Split (chunksOf, splitOn)

parseInput :: String -> [(Int, Int)]
parseInput = map toPair . splitOn ","
  where
    toPair s =
      case splitOn "-" s of
        [a, b] -> (read a, read b)
        xs     -> error $ "parseInput: expected two numbers, got: " ++ show xs

getTwice :: Int -> Int
getTwice x
  | odd $ length s = 0
  | a == b         = x
  | otherwise      = 0
  where
    s     = show x
    (a,b) = splitAt (length s `div` 2) s

getWrong :: Int -> Int
getWrong x =
  bool 0 x . any repeats $ [1 .. length s `div` 2]
  where
    s = show x

    repeats :: Int -> Bool
    repeats n =
      length s `mod` n == 0 &&
        case chunksOf n s of
          (c:cs) -> all (== c) cs
          _      -> False

sumWith :: (Int -> Int) -> [(Int, Int)] -> Int
sumWith f = sum . map (sum . map f . uncurry enumFromTo)

partOne :: [(Int, Int)] -> Int
partOne = sumWith getTwice

partTwo :: [(Int, Int)] -> Int
partTwo = sumWith getWrong

main :: IO ()
main = do
  input <- readFile "../input/day02.txt"
  let x = parseInput input
  print $ partOne x
  print $ partTwo x
