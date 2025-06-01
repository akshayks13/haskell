str2 :: String -> Int
str2 x = read x :: Int

add :: (Int,Int,Int) -> Int
add(x,y,z) = (x+y+z)


main = do
 putStrLn("Enter three numbers : ")
 input1 <- getLine
 input2 <- getLine
 input3 <- getLine
 let x = str2 input1
 let y = str2 input2
 let z = str2 input3
 
 let sum = add (x,y,z)
 print(sum)
 
 
 
 