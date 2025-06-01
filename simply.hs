import System.Console.Haskeline (simpleCompletion)

pow x = do
    let z = x**2
    return z

convertnumtolist n = 
    if n==0 then []
    else convertnumtolist (div n 10) ++ [mod n 10]

countzero n c = if n==0
    then c
    else if n<=9
        then c
        else if mod n 10 ==0
            then countzero (div n 10) (c+1)
            else countzero (div n 10) c

simplefunc :: Integral a => [a] -> [a]
simplefunc [] = []
simplefunc (x:xs)
    | even x = x^2 : simplefunc xs
    | otherwise = x : simplefunc xs


x = [a+b | a <- [1..10],b <- [10..20], even a && odd b]
