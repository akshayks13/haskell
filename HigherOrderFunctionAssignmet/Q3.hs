otherMap :: (t -> a) -> (t -> a) -> [t] -> [a]
otherMap _ _ [] = []
otherMap f1 f2 (x:xs) = f1 x : otherMap f2 f1 xs

-- Test cases
main :: IO ()
main = do
  print $ otherMap (+10) (+100) [0, 1, 2, 3, 4]       -- [10,101,12,103,14]
  print $ otherMap (+5) (subtract 10) [100, 200, 300, 400, 500] -- [105,190,305,390,505]
