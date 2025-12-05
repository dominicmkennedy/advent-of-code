module Main where

parseInput :: String -> [Int]
parseInput = map toInt . words
  where
    toInt ('R':xs) = read xs
    toInt ('L':xs) = negate (read xs)
    toInt _        = error "invalid input"

partOne :: [Int] -> Int
partOne = length . filter ((== 0) . (`mod` 100)) . scanl (+) 50

partTwo :: [Int] -> Int
partTwo = sum . map snd . scanl step (50, 0)
  where
    step :: (Int, Int) -> Int -> (Int, Int)
    step (pos, _) amnt = (normPos, numPasses)
      where
        normPos   = mod (pos + amnt) 100
        numPasses = (abs amnt `div` 100) + fromEnum crossesZero
        crossesZero
          | pos == 0      = False
          | normPos == 0  = True
          | amnt > 0      = normPos < pos
          | amnt < 0      = normPos > pos
          | otherwise     = False

main :: IO ()
main = do
  input <- readFile "../input/day01.txt"
  let x = parseInput input
  print $ partOne x
  print $ partTwo x
