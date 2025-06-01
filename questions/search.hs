readInts :: String -> [Int]
readInts x = read x

search :: [Int] -> Int -> IO()
search [] _ = putStrLn("Not found")
search (x:xs) num = 
 if x == num
  then putStrLn("Found")
 else
  search xs num
 

main = do
 putStrLn("Enter a list")
 input <- getLine
 let list = readInts input
 print(list)
 putStrLn("Enter the value to be searched : ")
 input2 <- getLine
 let num = read input2 :: Int
 search list num
