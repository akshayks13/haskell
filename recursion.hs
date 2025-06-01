
-- GCD 
gcdRecursive a b
    | b == 0    = abs a  -- Base case: If b is 0, return the absolute value of a
    | otherwise = gcdRecursive b (a `mod` b)

-- Fibonacci Series
fibo 0 = 1
fibo 1 = 1
fibo n = fibo(n-1) + fibo (n-2)

fibonacciSequence :: Int -> [Int]
fibonacciSequence n = [fibo x | x <- [0..n]]

-- Product of a list of number
prod l = if null l
    then 0
    else if length l == 1
        then head l
        else head l * (prod (tail l))

-- Reverse a number
rev num revnum = if num == 0
    then revnum
    else rev (div num 10) (revnum * 10 + (mod num 10)) 

-- Sum of n natural number
summ n = if n == 1
    then 1
    else n + summ (n-1)

-- Sum of digits of a number 
sumdigit n s = if n == 0
    then s
    else sumdigit (div n 10) (s+ mod n 10)

sumdig n 
    | n==0 = 0
    | otherwise = mod n 10 + sumdig (div n 10)

-- Number of zeroes in a number
numzero n = if n==0
    then 1
    else if n <=9
        then 0
        else if mod n 10 ==0
            then 1+numzero (div n 10)
            else numzero (div n 10)

-- power of a number
power n p= if p == 0
    then 1
    else n * power n (p-1)

-- Product of two numbers using addition
prodnums a b = if b == 0
    then 0
    else if b >0
        then a + prodnums a (b-1)
        else -prodnums a (-b)

-- hailstone sequence
hailstone 1 = [1]  -- Base case: the sequence ends at 1
hailstone n 
    | even n    = n : hailstone (n `div` 2)  -- If n is even, divide by 2
    | otherwise = n : hailstone (3 * n + 1)  -- If n is odd, apply 3n + 1

