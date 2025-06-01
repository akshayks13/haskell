import Data.ByteString (isInfixOf)

sub s1 s2 = isInfixOf s1 s2

sub1 :: Eq a => [a] -> [a] -> Bool
sub1 s1 s2 = if length s2 > length s1 
    then False
    else if take (length s2) s1 == s2 
        then True
        else sub1 (tail s1) s2

-- Subsequence

subseq :: (Eq a) => [a] -> [a] -> Bool
subseq [] _ = True  -- An empty list is always a subsequence
subseq _ [] = False -- If the main list is empty but subsequence is not, return False
subseq (x:xs) (y:ys)
  | x == y    = subseq xs ys  -- If the elements match, move both pointers
  | otherwise = subseq (x:xs) ys  -- If they don't match, move only the main list pointer

