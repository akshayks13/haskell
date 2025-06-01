classifySize :: Int -> String
classifySize n = if n<10
    then "Small"
    else if n<=100
        then "Medium"
        else "Large"


main :: IO ()
main = do
    putStrLn "Enter a number : "
    input <- getLine
    let n = read input :: Int
    putStrLn(classifySize n)
