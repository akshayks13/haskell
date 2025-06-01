readInts :: String -> [Int]
readInts x = read x

main = do
 input <- getLine
 let list = readInts input
 putStrLn("hi")
 print list
