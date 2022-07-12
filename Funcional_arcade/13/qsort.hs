qsort [] = []
qsort (x:xs) = menor ++ [x] ++ maior
    where 
        menor = qsort [y | y <- xs, y <= x]
        maior = qsort [y | y <- xs, y > x]
        