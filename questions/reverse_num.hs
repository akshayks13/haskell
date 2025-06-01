reverseNum n rev = 
 if n==0
 then rev
 else
  reverseNum (n `div` 10) (rev*10 + n`mod` 10)
  
main = do
 putStrLn("Enter a number : ")
 num <- getLine
 let number = read num :: Int
 print(reverseNum number 0)