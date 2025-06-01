product' x y = 
 if y==0
 then 0
 else 
  x + product' x (y-1)
  
str2 :: String -> Int
str2 x = read x :: Int
  
main = do
 putStrLn("Enter two numbers : ")
 input1 <- getLine
 input2 <- getLine
 
 let x = str2 input1
 let y = str2 input2
 
 print(product' x y)
 