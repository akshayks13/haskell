pal1 s = s == reverse s

pal :: Eq a => [a] -> Bool
pal s = 
    if null s || length s == 1  -- Base case: empty or single element is a palindrome
    then True
    else 
        if head s == last s     -- Check if the first and last elements are the same
        then pal (init (tail s))  -- Recursively check the rest of the list
        else False

lenString s = if s==""
    then 0
    else 1 + lenString(tail s)
