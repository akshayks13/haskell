import Data.List (nub)
import Data.ByteString (count)

-- Search ele
search l x = if null l
    then "Element not present"
    else if (head l) == x
        then "Element found"
        else search (tail l) x


-- Odd number of times 
countele l x = length (filter (==x) l)
oddtime xs = nub [x | x <- xs, odd (countele xs x)]

-- Display Duplicates
dupli xs = nub [x |x<-xs,countele xs x >1]

-- Display only the odd elements in the list
odds xs = [x | x<-xs , odd x]

-- Function to remove duplicates from a list
removeDuplicates [] = []
removeDuplicates (x:xs) 
    | x `elem` xs = removeDuplicates xs  -- Skip if 'x' is already in the rest of the list
    | otherwise   = x : removeDuplicates xs  -- Keep 'x' and process the rest

-- Sum of even elements in a list
evens xs = [x | x<-xs , even x]
sumeven xs = sum (evens xs)

-- smallest element in a list
sml [x] = x
sml (x:xs) = min x (sml xs)

-- readlist
readList :: IO [Int]
readList = do
    putStrLn "Enter a list of numbers (comma-separated):"
    input <- getLine  -- Read the user input as a string
    let numbers = read ("[" ++ input ++ "]") :: [Int]  -- Convert the input string into a list of integers
    return numbers

-- Sum at odd indices
sumatodd xs s i= if null xs
    then s
    else if (odd i)
        then
        sumatodd (tail xs) (s+head xs) (i+1)
        else
            sumatodd (tail xs) (s) (i+1)

-- using guards
sumAtOdd [] s _ = s  -- Base case: if the list is empty, return the sum
sumAtOdd (x:xs) s i 
    | odd i     = sumAtOdd xs (s + x) (i + 1)  -- If the index is odd, add to the sum
    | otherwise = sumAtOdd xs s (i + 1) 
