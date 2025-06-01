readInts :: String -> [Int]
readInts x = read x



remove_element :: Int -> [Int] ->[Int]
remove_element _ [] = []
remove_element y (z:zs) = 
 if y==z
 then remove_element y zs
 else
  z : remove_element y zs
  
  
  
occurence :: [Int] -> Int -> Int 
occurence [] _  = 0
occurence (x:xs) num = 
 if num == x
 then do
  1 + occurence xs num
 else
  occurence xs num
 
 
check :: [Int] -> IO()
check [] = return()
check (x:xs) = do
 let n = occurence (x:xs) x 
 if n `mod` 2 /= 0
 then do
  print x
  check (remove_element x xs)
 else
  check xs
 


main = do
 input <- getLine
 let list = readInts input
 putStrLn("The list :  ")
 print list
 putStrLn("Answer : ")
 --check list
 occurence list 2