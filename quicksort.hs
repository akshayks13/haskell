

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = smallertsorted ++ [x] ++ biggertsorted
  where smallertsorted = qsort [a | a <- xs, a <= x]
        biggertsorted = qsort [a | a <- xs, a > x]
        