-- Higher order function limTransform
limTransform :: (a -> a) -> Int -> [a] -> [a]
limTransform _ _ [] = []  -- Base case: empty list
limTransform f 0 xs = xs  -- If limit is 0, return the list unchanged
limTransform f limit (x:xs) = f x : limTransform f (limit - 1) xs  -- Apply transformation and decrease limit

-- Example usage
main :: IO ()
main = do
    print $ limTransform (*2) 3 [1, 2, 3, 4, 5]  -- [2, 4, 6, 4, 5]
    print $ limTransform (+1) 0 [1, 2, 3]         -- [1, 2, 3]
    print $ limTransform (*2) 10 [1, 2, 3]        -- [2, 4, 6]
    print $ limTransform (*2) 0 []                 -- []
