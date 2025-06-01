readInts :: String -> [Int]
readInts x = read x

reverse_list :: [Int] -> [Int]
reverse_list [] = []
reverse_list (x:xs) = reverse_list xs ++ [x]

main = do
 putStrLn("enter the list : ")
 input <- getLine
 let list = readInts input
 print list
 let new_list = reverse_list list
 print new_list
