rotDir y xs
    |y == 0 = xs
    |otherwise = rotDir (y-1) ((last xs):(init xs))