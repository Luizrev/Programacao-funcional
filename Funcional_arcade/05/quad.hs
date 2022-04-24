verif i x
    |(i*i) > x = False
    |(i*i) == x = True
    |otherwise = verif (i+1) x


quadperf x = verif 1 x