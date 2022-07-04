totelRecursivo x
    |x == [] = 0
    |otherwise = 1 + totelRecursivo (tail x)

