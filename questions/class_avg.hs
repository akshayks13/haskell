readInts :: String -> [Int]
readInts x = read x

length' :: [Int] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = x + sum' xs

check :: [Int] -> Int -> Int
check [] avg = 0
check (x:xs) avg = 
 if x < avg
 then 1 + check xs avg
 else
  check xs avg


main = do
 input <- getLine
 let list = readInts input
 putStrLn("Marks of n students are : ")
 print list
 let len = length' list
 putStrLn("Length of list is : ")
 print len
 
 let avg = sum' list `div` len
 putStrLn("Average of n students is : ")
 print avg
 
 let see = check list avg
 print see
 
 