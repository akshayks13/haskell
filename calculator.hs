-- Using Guards
calculate :: Int -> Int -> Char -> Int
calculate a b op
    | op == '+' = a + b
    | op == '-' = a - b
    | op == '*' = a * b
    | op == '/' = a `div` b  -- Integer division
    | otherwise = error "Invalid operation"

main2 :: IO ()
main2 = do
    print (calculate 10 5 '+')  -- Output: 15
    print (calculate 10 5 '/')  -- Output: 2


-- or
-- Using simple if-else
calc a b op =if op == '+'
        then a+b
        else if op == '-'
        then a-b
        else if op == '*'
        then a*b
        else if op == '/'
            then a/b
        else
        0
