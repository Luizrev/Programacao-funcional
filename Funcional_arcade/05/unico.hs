transform x y = map (==x) y

unico x y 
    |(length $ filter (==x) y) == 1 = True
    |otherwise = False
