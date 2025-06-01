readInts :: String -> [Int]
readInts x = read x

add_even :: [Int] -> Int -> Int
add_even [] sum = sum
add_even (x:xs) sum = 
 if x `mod` 2 == 0
  then 
   add_even xs (sum+x)
 else
  add_even xs sum
  
  
main = do
 putStrLn("Enter a list")
 input <- getLine
 let list = readInts input
 print(list)
 print(add_even list 0)

 