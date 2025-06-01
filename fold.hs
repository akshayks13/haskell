
summ xs = foldl(\acc x -> acc + x) 0 xs

sumjj :: Num a => [a] -> a
sumjj = foldl (+) 0

