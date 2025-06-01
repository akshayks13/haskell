sum' n x = 
 if n==0
 then x
 else 
  sum' (n-1) (x+n)


main = do
 putStrLn("Enter a number : ")
 num <- getLine
 let number = read num :: Int
 print(sum' number 0)
 