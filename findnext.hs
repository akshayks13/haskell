
findafter l a = if null l
    then []
    else if a == head l 
        then [head (tail l)]
        else
            findafter (tail l) a
