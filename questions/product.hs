readInts :: String -> [Int]
readInts x = read x

product' :: [Int] -> Int
product' [] = 1
product' (x:xs) = x * product' xs 

main = do
 putStrLn("Enter a list")
 input <- getLine
 let list = read input 
 putStrLn("The list is : ")
 print list
 putStrLn("Product : ")
 print(product' list) 