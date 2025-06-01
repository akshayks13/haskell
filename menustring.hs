
lengthofString s = if s == ""
    then 0
    else 1 + lengthofString(tail s)

joinString s1 s2 = s1++s2

rev s = if s == ""
    then s
    else rev (tail s) ++ [head s]

comp s1 s2 = s1 == s2

cpy s1 s2 = s2 where s2 = s1

main = do
    putStrLn "Enter the option : "
    op <- getLine
    if op == "a"
        then do
            putStrLn "Enter the String to Calculate the length : "
            s<-getLine 
            putStrLn (show(lengthofString s))
        else
            putStrLn "Bye"

