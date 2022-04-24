reverso x
    |x == [] = []
    |otherwise = (last x):(reverso (init x))