fibbo n = 
 if n==0
 then 0
 else 
   if n==1
   then 1
 else
  fibbo(n-1) + fibbo(n-2)
  
printing n x=
 if n==x
 then 0
 else
  print(fibbo n)
  printing (n-1) x
 

main = do
 putStrLn("Enter a number : ")
 num <- getLine
 let number = read num :: Int
 printing number 0
 