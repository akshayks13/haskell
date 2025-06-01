-- Age Problem
-- main = do
--     putStrLn "Enter a number : "
--     n <- getLine
--     let num = read n :: Int
--     if num > 16
--         then putStrLn "You are old enough to ride"
--         else  putStrLn ("You need to wait for " ++ show(16-num))

main :: IO ()
main = do
    putStrLn "Enter your hourly pay rate: "
    rateInput <- getLine
    let rate = read rateInput :: Double

    print "Enter the number of hours worked in the week: "
    hoursInput <- getLine
    let hours = read hoursInput :: Double

    print "Enter a list :"
    l <- getLine
    let lis = read l :: [Int]

    let regularHours = min 40 hours
    let overtimeHours = max 0 (hours - 40)
    let regularPay = regularHours * rate
    let overtimePay = overtimeHours * (rate * 1.5)
    let grossPay = regularPay + overtimePay

    print("Your regular pay is: $" ++ show regularPay)
    print("Your overtime pay is: $" ++ show overtimePay)
    print("Your gross pay is: $" ++ show grossPay)
    print("The list enetered is :" ++ show lis)
