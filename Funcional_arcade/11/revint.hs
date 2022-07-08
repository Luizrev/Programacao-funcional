aux x y
    |x == 0 = y
    |otherwise = aux (div x 10) (y * 10 + mod x 10)

reverte x = aux x 0