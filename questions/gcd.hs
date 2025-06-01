gcd1 :: Integral a => a -> a -> a
gcd1 a 0 = abs a
gcd1 a b = gcd1 b (a `mod` b)

main = do
 print(gcd1 48 18)