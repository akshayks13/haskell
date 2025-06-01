power :: (Num t1, Ord t1, Fractional t2) => t2 -> t1 -> t2
power x n = if n == 0 
    then 1
    else 
        if n>0 
            then x * power x (n-1)
        else 1/power x (-n)

pow1 x n 
    | n == 0 = 1
    | n>0 = x * pow1 x (n-1)
    | otherwise = 1/pow1 x (-n)
