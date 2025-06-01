-- -- Reverse a string
rev xs = if null xs 
    then xs
    else rev(tail xs) ++ [head xs]

-- Reverse a list
rev1 :: [a] -> [a]
rev1 [] = []                     
rev1 (x:xs) = rev1 xs ++ [x]

ev n = if mod n 2 == 0
    then putStrLn "Hi"
    else putStrLn "Bye"
