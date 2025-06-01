
import Data.Char (isAlpha, isDigit, toLower)

-- Function to count vowels, consonants, and numbers
countChars :: String -> (Int, Int, Int)
countChars s = countHelper s (0, 0, 0)

-- Helper function to count vowels, consonants, and numbers using tail recursion
countHelper :: String -> (Int, Int, Int) -> (Int, Int, Int)
countHelper [] (vowels, consonants, numbers) = (vowels, consonants, numbers)
countHelper s (vowels, consonants, numbers) 
    | isDigit (head s) = countHelper (tail s) (vowels, consonants, numbers + 1)  -- If the first char is a digit
    | isAlpha (head s) && toLower (head s) `elem` "aeiou" = countHelper (tail s) (vowels + 1, consonants, numbers)  -- If the first char is a vowel
    | isAlpha (head s) = countHelper (tail s) (vowels, consonants + 1, numbers)   -- If the first char is a consonant
    | otherwise = countHelper (tail s) (vowels, consonants, numbers)  -- Ignore non-alphabet and non-digit characters

-- Main function to run the program
main :: IO ()
main = do
    putStrLn "Enter a string:"
    input <- getLine
    let (vowels, consonants, numbers) = countChars input
    putStrLn ("Number of vowels: " ++ show vowels)
    putStrLn ("Number of consonants: " ++ show consonants)
    putStrLn ("Number of digits: " ++ show numbers)
