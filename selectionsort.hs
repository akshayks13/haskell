mini :: (Ord a) => [a] -> a
mini l = 
    if length l == 1
        then head l
    else
        min (head l) (mini (tail l))

removeElement :: (Eq a) => a -> [a] -> [a]
removeElement x [] = []
removeElement x (y:ys)
    | x == y    = ys  -- Remove the first occurrence of x
    | otherwise = y : removeElement x ys

sortList :: (Ord a) => [a] -> [a]
sortList [] = [] -- Base case: empty list
sortList l = 
    let m = mini l
    in m : sortList (removeElement m l) -- Add the minimum element to the result
