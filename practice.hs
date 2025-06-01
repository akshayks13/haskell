-- factorial
fact 0 = 1
fact n = n * fact(n-1)

-- Number to list
numtolist n = if n == 0
    then []
    else numtolist (div n 10) ++ [mod n 10]

-- Find next element
findnext l x = if null l
    then -1
    else if (head l) == x
        then head (tail l)
        else findnext (tail l) x

-- Count characters
countchar s (vowels,consanants,digits) = if null s
    then (vowels,consanants,digits)
    else if elem (head s) "aeiuo"
        then countchar (tail s) (vowels+1,consanants,digits)
        else if elem (head s) "1234567890"
            then countchar (tail s) (vowels,consanants,digits+1)
            else countchar (tail s) (vowels,consanants+1,digits)

countele l x = if null l
    then 0
    else if (head l) == x
        then 1+(countele (tail l) x)
        else countele (tail l) x

oddtime l s = if null l
    then s
    else if odd (countele l (head l))
        then oddtime (tail l)(s ++ [head l])
        else oddtime (tail l)(s)

-- Remove Duplicates
removeDuplicates l s = if null l
    then s
    else if elem (head l) s 
        then removeDuplicates (tail l) (s)
        else removeDuplicates (tail l) (s ++ [head l])

-- reverse string
rev s = if null s
    then []
    else rev (tail s) ++ [head s]

-- Length of a list
lengthlist l = if null l
    then 0
    else 1+lengthlist (tail l)

-- Product without *
prodnums a b = if b==0 || a==0
    then 0
    else if b>0 
        then a + prodnums (a) (b-1)
        else -(prodnums a (-b))

-- Unpacking list
nestedtolist l s = if null l
    then s
    else nestedtolist (tail l) (s ++ (head l))

-- Sum of sum of numbers upto n
sumnumlist :: (Num a, Enum a) => [a] -> a
sumnumlist [] = 0
sumnumlist (x:xs) = sum [1..x] + sumnumlist xs

-- Prime check
isprime :: Integral a => a -> Bool
isprime x = if x == 1
    then False
    else if x == 2
        then True
        else if even x
            then False
            else if length [y | y <- [2..(x-1)], mod x y == 0] > 0
                then False
                else True

-- Add 2 to a number
add2 :: Integer -> Integer
add2 = (+2)

-- main = do
--     putStrLn "Enter a list : "
--     input <- getLine
--     let num = read input :: [Int]
--     putStrLn("The list is : " ++ show(num))

-- reading list input 
readl :: Int->IO[Int]
readl 0=return []
readl n=do
    x<- readLn :: IO Int
    s<- readl (n-1)
    return (x:s)
