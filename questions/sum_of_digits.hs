sum_of_digts num x = 
 if num==0
 then x
 else
  sum_of_digts (num `div` 10) (x+(num `mod` 10))

main = do
 putStrLn("Enter a number : ")
 num <- getLine
 let number = read num :: Int
 print(sum_of_digts number 0)
 
 