func base expo =
 if expo==0
 then 1
 else
   base * func base (expo-1)
  
main = do
 putStrLn("Enter a base : ")
 base <- getLine
 putStrLn("Enter a power : ")
 power <- getLine
 let x = read base :: Int
 let y = read power :: Int
 print(func x y)