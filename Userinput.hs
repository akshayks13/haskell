main = do
    putStrLn "Enter your name : "
    name <- getLine

    putStrLn "Enter you age : "
    ag <- getLine
    let age = read ag :: Int

    putStrLn "Enter your marks as list : "
    ma <- getLine
    let marks = read ma :: [Int]

    putStrLn ("Your Name : "++ name)
    putStrLn("Age : "++show(age))
    putStrLn("Marks : "++show(marks))
