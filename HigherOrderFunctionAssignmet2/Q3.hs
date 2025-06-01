-- Function to apply f to x exactly n times
applyNTimes :: Int -> (a -> a) -> a -> a
applyNTimes n f x 
    | n <= 0    = x  -- Base case: if n is 0 or negative, return x unchanged
    | otherwise = applyNTimes (n - 1) f (f x)  -- Apply f and recurse

-- Example usage
main :: IO ()
main = do
    print $ applyNTimes 3 (+2) 5            -- 11
    print $ applyNTimes 4 (*3) 1            -- 81
    print $ applyNTimes 0 (subtract 1) 10   -- 10
    print $ applyNTimes 5 (++ "!") "Hello"  -- "Hello!!!!!"
    print $ applyNTimes 2 reverse [1, 2, 3, 4] -- [1,2,3,4]
    print $ applyNTimes 3 tail [1..10]      -- [4,5,6,7,8,9,10]
