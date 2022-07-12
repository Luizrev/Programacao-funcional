fibo x
    |x == 0 = 0
    |x == 1 = 1
    |otherwise = fibo (x-1) + fibo (x - 2)

vetFib x
    |x == 0 = [fibo 0]
    |otherwise = vetFib (x-1) ++ [fibo x]
