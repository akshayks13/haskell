count num = 
 if num==0
 then 1
 if x<10
 then 0
 
 last = x `mod` 10
 if last == 0
 then 1 + count(x `div` 10)
 else
  count(x `div` 10)
  

main = do
 putStrLn("Enter a number : ")
 num <- getLine
 let number = read num :: Int
 count num