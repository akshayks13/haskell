
limFiltTransform :: (a -> Bool) -> (a -> a) -> Int -> [a] -> [a]
limFiltTransform _ _ _ [] = []  -- Base case: empty list
limFiltTransform p f limit (x:xs)
   | limit <= 0 = f x : map f xs  -- If limit is exhausted, transform the rest of the list
   | not (p x)  = limFiltTransform p f (limit - 1) xs  -- Remove element if it doesn't satisfy predicate
   | otherwise  = f x : limFiltTransform p f limit xs  -- Keep element and transform

main :: IO ()
main = do
    print $ limFiltTransform (> 0) (* 2) 2 [-3, -2, 0, 1, 2, 3]
    print $ limFiltTransform odd negate 3 [1, 2, 3, 4, 5]        
    print $ limFiltTransform (> 0) (* 2) 0 [-3, -2, 0, 1, 2, 3]            
    print $ limFiltTransform (> 0) (* 2) 5 []                    
    print $ limFiltTransform (== 0) (+1) 2 [0, 0, 0, 0]           
