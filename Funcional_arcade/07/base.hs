texto x = (['0'..'9']++['A'..'Z']) !! x

base x y
    |x == 0 = []
    |otherwise = base (div x y) y ++ [texto (mod x y)]