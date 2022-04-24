sequencia x y
    |x == 0 = []
    |x == 1 = [y]
    |otherwise = (sequencia (x-1) y) ++ [y + x - 1]