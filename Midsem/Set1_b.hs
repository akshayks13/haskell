-- Function to remove all occurrences of "abc" from a single string
removeABC :: String -> String
removeABC [] = []
removeABC (a:b:c:xs)
    | a == 'a' && b == 'b' && c == 'c' = removeABC xs -- Skip "abc" and continue recursion
removeABC (x:xs) = x : removeABC xs -- Keep the first character and recurse

-- Function to process a list of strings
removeABCFromList :: [String] -> [String]
removeABCFromList [] = []
removeABCFromList (s:ss) = removeABC s : removeABCFromList ss -- Process the head and recurse for the tail

-- Example usage
main :: IO ()
main = print $ removeABCFromList ["helloabcworld", "abcexample", "foo", "aabcbcab"]
