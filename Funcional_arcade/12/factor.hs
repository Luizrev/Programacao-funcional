divis x = [y | y <- [1..x], x `mod` y == 0]

ehPrimo x 
    |x == 1 = True
    |otherwise = divis x == [1,x]

listaPrimos = [x | x <- [2..], ehPrimo x]

