
sumsquare xs = if null xs
    then 0
    else (head xs)*(head xs) + sumsquare(tail xs)
