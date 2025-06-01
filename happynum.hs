-- Convert a number to a list of its digits
numtolist :: Int -> [Int]
numtolist n = if n == 0
    then []
    else numtolist (div n 10) ++ [mod n 10]

-- Square a number
square :: Int -> Int
square x = x * x

-- Calculate the sum of the squares of a list of digits
sumsquare :: [Int] -> Int
sumsquare l = if null l
    then 0
    else square (head l) + sumsquare (tail l)

-- Check if a number is a Happy number
isHappy :: Int -> [Int] -> Bool
isHappy n seen = 
    if n == 1
        then True
        else if elem n seen
            then False
            else isHappy (sumsquare (numtolist n)) (n : seen)

-- Main function for testing
main :: IO ()
main = do
    putStrLn "Enter a number to check if it is a Happy number:"
    input <- getLine
    let number = read input :: Int
    if isHappy number []
        then putStrLn "It is a Happy number!"
        else putStrLn "It is not a Happy number!"
