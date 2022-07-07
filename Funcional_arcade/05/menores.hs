tiraMaior xs
    |(last xs)==(maximum xs) = init xs
    |otherwise = (tiraMaior (init xs)) ++ [last xs]

menores n xs
    |n == 0 || xs == [] = []
    |(length xs) <= n = xs
    |otherwise = menores n (tiraMaior xs)