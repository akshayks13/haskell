
-- Sum of digits of a number
summ num = if num == 0
    then 0
    else mod num 10 + summ (div num 10)

-- Reverse a number
rev num r = if num == 0
    then r
    else rev (div num 10) (r*10 + num `mod` 10)

-- factorial

fact 0 = 1
fact n = n * fact(n-1)