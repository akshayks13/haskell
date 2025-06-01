
limfilt :: (a -> Bool) -> Int -> [a] -> [a]
limfilt _ 0 xs = xs
limfilt _ _ [] = []
limfilt f limit (x:xs)
  | not (f x) && limit > 0 = limfilt f (limit - 1) xs
  | otherwise = x : limfilt f limit xs

-- Test cases
main :: IO ()
main = do
  print $ limfilt (> 0) 10 [-3..3] -- [1,2,3]
  print $ limfilt (> 0) 0 [-5..5]  -- [-5,-4,-3,-2,-1,0,1,2,3,4,5]
  print $ limfilt (> 0) 3 [-2, 2, -3, 3, -4, 4, -5, 5] -- [2,3,4,-5,5]
  print $ limfilt (== 0) 3 [] -- []
  print $ limfilt (\x -> x `rem` 2 == 0) 2 [1..9] -- [2,4,5,6,7,8,9]
