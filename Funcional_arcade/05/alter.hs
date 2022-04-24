alter x
    |x == 0 = []
    |x == 1 = [1,-1]
    |otherwise = alter (x-1) ++ [x,-x]