import Data.List (nub)
-- Search ele
search l x = if null l
    then "Element not present"
    else if (head l) == x
        then "Element found"
        else search (tail l) x
    
-- main = do
--     putStrLn "Enter a list of integers (comma-separated): "
--     input <- getLine  -- Read the input as a string
--     let numbers = read ("[" ++ input ++ "]") :: [Int]  -- Convert the string into a list of integers
--     putStrLn ("You entered: " ++ show numbers)
--     putStrLn "enter a number to search for : "
--     x <- getLine
--     let x1 = read x :: Int
--     putStrLn (search numbers x1)

-- Odd number of times 
countele l x = length (filter (==x) l)
oddtime xs = nub [x | x <- xs, odd (countele xs x)]

