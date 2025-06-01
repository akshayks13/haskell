
sumlist [] = 0
sumlist xs = head xs + sumlist(tail xs)

