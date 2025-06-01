
numberlist x = if x==0
    then []
    else numberlist(div x 10) ++ [mod x 10]

