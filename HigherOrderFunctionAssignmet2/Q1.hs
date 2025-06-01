-- Function to partition a list into sublists of at most n elements
partitionWithLimit :: Int -> [a] -> [[a]]
partitionWithLimit _ [] = []  -- Base case: empty list
partitionWithLimit n xs = take n xs : partitionWithLimit n (drop n xs)  -- Take first n elements and recurse on the rest

-- Example usage
main :: IO ()
main = do
    print $ partitionWithLimit 3 [1,2,3,4,5,6,7]          -- [[1,2,3],[4,5,6],[7]]
    print $ partitionWithLimit 2 "haskell"               -- ["ha","sk","el","l"]
    print $ partitionWithLimit 4 [1..10]                 -- [[1,2,3,4],[5,6,7,8],[9,10]]
    print $ partitionWithLimit 1 [1,2,3]                 -- [[1],[2],[3]]
    print $ partitionWithLimit 5 "HelloWorld"            -- ["Hello","World"]
    print $ partitionWithLimit 2 [True, False, True]     -- [[True, False], [True]]
