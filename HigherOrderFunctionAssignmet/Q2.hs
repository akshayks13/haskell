
leaveUntil :: (a -> Bool) -> [a] -> [a]
leaveUntil _ [] = []
leaveUntil f (x:xs)
  | f x       = x : xs
  | otherwise = leaveUntil f xs

-- Test cases
main :: IO ()
main = do
  print $ leaveUntil (< 5) [10, 7, 4, 1]             -- [4, 1]
  print $ leaveUntil (\x -> x `rem` 2 == 0) [1..10]  -- [2, 3, 4, 5, 6, 7, 8, 9, 10]
  print $ leaveUntil (== 0) []                       -- []
