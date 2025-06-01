readInts :: String -> [Int]
readInts x = read x

odd' :: [Int] -> IO()
odd' [] = return()
odd' (x:xs) = 
 if x `mod` 2 /= 0
  then do
   print x
   odd' xs
 else
  odd' xs
  
  
main = do
 putStrLn("Enter a list")
 input <- getLine
 let list = readInts input
 print(list)
 odd' list
 