-- Define a function to calculate factorial
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Main function to run the program
main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let number = read input :: Integer
    putStrLn ("The factorial of " ++ show number ++ " is " ++ show (factorial number))
