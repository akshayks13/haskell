add :: (Int,Int)->Int
add(x,y) = (x+y)

sub :: (Int,Int)->Int
sub(x,y) = (x-y)

pro :: (Int,Int)->Int
pro(x,y) = (x*y)

quo :: (Int,Int)->Int
quo(x,y) = x `div` y

rem' :: (Int,Int)->Int
rem'(x,y) = x `mod` y

str2 :: String->Int
str2 x = read x :: Int

main=do
 menuloop
 
menuloop = do
 
 putStrLn("1. Sum\n 2. Difference 3. product 4.quotient 5. remainder")
 putStrLn("Enter option (1/2/3/4/5)")
 input3 <- getLine
 let z = str2 input3
 
  
 if z == 6 then do
  putStrLn("Exiting the loop")
 else do
  putStrLn("Enter two numbers : ")
  input1 <- getLine
  input2 <- getLine
  let x = str2 input1
  let y = str2 input2
  putStrLn ("The result is : ")
  case z of
   1 -> print(add(x,y))
   2 -> print(sub(x,y))
   3 -> print(pro(x,y))
   4 -> print(quo(x,y))
   5 -> print(rem'(x,y))
  menuloop
 