readInts :: String -> [Int]
readInts x = read x

minimum' :: [Int] -> Int
minimum' [] = 0
minimum' [x] = x
minimum' (x:xs) = min' x (minimum' xs)

min' :: Int -> Int -> Int
min' a b = 
 if a > b
  then b
 else a 
  
main = do
 putStrLn("Enter a list")
 input <- getLine
 let list = readInts input
 print(list)
 print(minimum' list)
 