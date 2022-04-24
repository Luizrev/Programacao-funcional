
concatena x y
    |x == [] && y == [] = []
    |x == [] = y
    |y == [] = x
    |otherwise = concatena (init x) ((last x):y)
    