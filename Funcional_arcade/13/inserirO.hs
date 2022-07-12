inserir x xs
    |xs == [] = [x]
    |x < (head xs) = x:xs
    |otherwise = (head xs) : (inserir x (tail xs))