-- Function to remove digits from a single string
removeDigitsFromString :: String -> String
removeDigitsFromString [] = []  -- Base case: empty string
removeDigitsFromString (x:xs)
    | x `elem` ['0'..'9'] = removeDigitsFromString xs  -- Skip the digit
    | otherwise = x : removeDigitsFromString xs  -- Keep the non-digit character

-- Function to remove digits from each string in a list
removeDigitsFromList :: [String] -> [String]
removeDigitsFromList [] = []  -- Base case: empty list
removeDigitsFromList (s:ss) = removeDigitsFromString s : removeDigitsFromList ss  -- Process the head and recurse for the tail

-- Example usage
main :: IO ()
main = print $ removeDigitsFromList ["hello123", "abc456def", "no7digits", "plainText"]
