-- Function to repeatedly apply f to x until p x becomes True
applyUntil :: (a -> Bool) -> (a -> a) -> a -> a
applyUntil p f x 
    | p x       = x  -- Stop when predicate p is True
    | otherwise = applyUntil p f (f x)  -- Otherwise, apply f and recurse

-- Example usage
main :: IO ()
main = do
    print $ applyUntil (> 100) (*2) 1       -- 128
    print $ applyUntil (== 0) (\n -> n - 1) 10  -- 0
    print $ applyUntil null tail [1,2,3]    -- []
    print $ applyUntil (> 50) (+5) 0        -- 55
    print $ applyUntil (== 'z') succ 'a'    -- 'z'
    print $ applyUntil (> 100) (*2) 50      -- 200
