somaImp x
    |x == [] = 0
    |head x `mod` 2 == 0 = somaImp (tail x)
    |otherwise = (head x) + somaImp (tail x) 