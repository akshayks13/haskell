readInts :: String -> [Int]
readInts x = read x

remove_element :: Int -> [Int] -> [Int]
remove_element _ [] = []
remove_element y (z:zs) = 
 if y==z
 then remove_element y zs
 else
  z : remove_element y zs
 

repeated :: [Int] -> IO()
repeated [] = return()
repeated (x:xs) = 
 if x `elem` xs
 then do
  print x
  repeated (remove_element x xs)
 else
  repeated xs
 

main = do
 input <- getLine
 let list = readInts input
 putStrLn("the list :  ")
 print list
 
 putStrLn("Repeated elements are : ")
 repeated list
 

 
 