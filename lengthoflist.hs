lengthofList xs = if null xs
                  then 0
                  else 1 + lengthofList(tail xs)
                  
-- Using pattern matching
le [] = 0
le xs = 1 + le(tail xs)
